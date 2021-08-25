# Passos para configurar a app e subir manualmente
    # Criando o arquivo .env (temporário)
        cd /vagrant/jenkins-todo-list/to_do/
        vi .env
            [config]
            # Secret configuration
            SECRET_KEY = 'r*5ltfzw-61ksdm41fuul8+hxs$86yo9%k1%k=(!@=-wv4qtyv'

            # conf
            DEBUG=True

            # Database
            DB_NAME = "todo_dev"
            DB_USER = "devops_dev"
            DB_PASSWORD = "mestre"
            DB_HOST = "localhost"
            DB_PORT = "3306"

    # Instalando o venv
        sudo pip3 install virtualenv nose coverage nosexcover pylint
    # Criando e ativando o venv (dev)
        cd ../    
        virtualenv  --always-copy  venv-django-todolist
        source venv-django-todolist/bin/activate
        pip install -r requirements.txt
    # Fazendo a migracao inicial dos dados
        python manage.py makemigrations
        python manage.py migrate
    # Criando o superuser para acessar a app
        python manage.py createsuperuser
    # Repetir o processo de migracaoção para o ambiente de produção:
        vi to_do/.env
            [config]
            # Secret configuration
            SECRET_KEY = 'r*5ltfzw-61ksdm41fuul8+hxs$86yo9%k1%k=(!@=-wv4qtyv'

            # conf
            DEBUG=True

            # Database
            DB_NAME = "todo"
            DB_USER = "devops"
            DB_PASSWORD = "mestre"
            DB_HOST = "localhost"
            DB_PORT = "3306"

    # Fazendo a migracao inicial dos dados
        python manage.py makemigrations
        python manage.py migrate
    # Criando o superuser para acessar a app
        python manage.py createsuperuser

    # Verificar o ip do servidor
        ip addr
    # Rodando a app
        python manage.py runserver 0:8000
        http://192.168.33.10:8000