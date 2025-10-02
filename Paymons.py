from flask import Flask, render_template, url_for, request, redirect 
from config import config 
from werkzeug.security import generate_password_hash
from flask_mysqldb import MySQL
from models.entities.User import User
from models.ModelUser import ModelUser
from flask_login import LoginManager, login_user, logout_user, login_required

paymonsApp = Flask(__name__)
db         = MySQL(paymonsApp)
signinManager = LoginManager(paymonsApp)

@signinManager.user_loader
def load_user(id):
    return ModelUser.get_by_id(db,id)

@paymonsApp.route('/')
def home():
    return render_template('home.html')

@paymonsApp.route('/signup', methods=['GET','POST'])
def signup():
    if request.method == 'POST':
        nombre = request.form['nombre']
        correo = request.form['correo']
        clave = request.form['clave']
        claveCifrada = generate_password_hash(clave)
        regUsuario = db.connection.cursor()
        regUsuario.execute("INSERT INTO usuario (nombre, correo, clave) VALUES (%s, %s, %s)", (nombre.upper(), correo, claveCifrada))
        db.connection.commit()
        return redirect(url_for('home'))
    else:
        return render_template('signup.html')

@paymonsApp.route('/signin',methods=['GET','POST'])
def signin():
    if request.method == 'POST':
        usuario = User(0,None,request.form['correo'],request.form['clave'],None)
        usuarioAutenticado = ModelUser.signin(db,usuario)
        if usuarioAutenticado is not None:
            login_user(usuarioAutenticado)
            if usuarioAutenticado.clave:
                if usuario.perfil == 'A':
                    return render_template('admint.html')
                else:
                    return render_template('user.html')
            else:
                return 'contraseña incorrecta'
        else:
            return 'usuario inexistente'
    else:
        return render_template('signin.html')



if __name__ == '__main__':
    paymonsApp.config.from_object(config['development'])
    paymonsApp.run(port=4000)