class Config:
    SECRET_KEY  = 'LSKJHFU345I//h@fdeHFIHi820hfgur$JDEU%/(9FD)'
    DEBUG       = True

class DevelopmentConfig(Config):
    MYSQL_HOST      = 'localhost'
    MYSQL_USER      = 'root'
    MYSQL_PASSWORD  = 'mysql'
    MYSQL_DB        = 'dogfood'

config = {
    'development': DevelopmentConfig
}        
