## Installation
* Ouvrir un terminal dans le dossier ou le projet doit être récupéré
* Étape 1 : `$ git git@github.com:Yoann-Vie/app-2-custom.git`
* Étape 2 : `$ cd app-2-custom/docker`
* Étape 3 : `$ docker-compose up -d --build`
* Une fois le travail terminé, quitter l'environnement de l'application avec : `$ docker-compose down`
### Accès aux outils de l'application
Ouvrir un navigateur et utiliser les urls suivantes

* Application application 2 : `http://localhost/index.php`

#### Installation d'un virtual host
Editer le fichier `/etc/hosts`
Puis faite pointer `127.0.0.1` vers `dev.myapp.fr`
Depuis le navigateur accéder à l'application via `http://dev.myapp.fr`
