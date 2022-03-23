### Étudiants :  
Fabien Zaplana
Emeline Geay Raunet

# Projet 

Pour réaliser notre TP nous avons décider d'utiliser notre propre serveur dédié ainsi qu'un nom de domaine personnel.

En effet, le sous domaine demandé : virtuoses.diverse-team.fr, ne semblait pas fonctionnel.

De plus, les restrictions d'utilisation des machines virtuelles nous on conduit à préférer l'usage de notre propre serveur dédié.

Le domaine utilisé est tlc.loinvoyant.com et les sous domaines correspondants (exemple : etherpad.tlc.loinvoyant.com).

À noter que le serveur dédié est assez faible en terme de ressources, le projet est relativement lourd et il arrive régulièrement que celui-ci crash.

Pour autant, sur un ordinateur assez puissant, il est possible de le lancer en local et il est dans ce cas très stable.

Nous avons réalisé les étapes 1 à 5.

# Diagramme

![](https://i.imgur.com/Pb2TtiS.png)

## Liens

Dashboard: https://tlc.loinvoyant.com

Login : DwtQ65q4CqU8s6EQ
Password : R82M8hGe26ixCxs6

phpMyAdmin: https://phpmyadmin.tlc.loinvoyant.com

user: tlc
password: tlc

Etherpad: https://etherpad.tlc.loinvoyant.com
Front: http://front.tlc.loinvoyant.com:4200

## Let's started

Après avoir cloner le projet :  
```bash=
./build.sh
./up.sh
```

Relancer les services :  
```bash=
./down.sh
./up.sh
```

Mettre à jour le projet :  
```bash=
git pull
./down.sh
./build.sh
./up.sh
```

## Traefik

En reverse proxy sécurisé, nous utilisons Traefik.

Tout les certificats sont générés via let's Encrypt et sont fonctionnels :  
![](https://i.imgur.com/zYdZMUp.png)

![](https://i.imgur.com/8VDXRwQ.png)

Adress dashboard : tlc.loinvoyant.com  
Login : DwtQ65q4CqU8s6EQ  
Password : R82M8hGe26ixCxs6  

![](https://i.imgur.com/LFt2oFH.png)

![](https://i.imgur.com/AeW3WR8.png)

Chaque service est accessible via son propre sous-domaine.

Traefik se charge de rediriger les différentes requêtes vers les bons conteneurs en suivant les règles définis dans les différents labels de chaque service (dans le docker-compose.yml)

## Intégration Continue

Utilisation d'un runner via github !

ci-tlc.yml :  
![](https://i.imgur.com/TjWW5jQ.png)

Workflows :  
![](https://i.imgur.com/90US7Nr.png)

![](https://i.imgur.com/zDg7YzU.png)

Nous avons mis en place une intégration continue, lorsqu'un commit est poussé sur master, automatiquement le serveur fait un pull et relance les services.

Cela fonctionne parfaitement !


## Phpmyadmin

PhpMyAdmin permet de consulter la base de données.

On constate que la connexion se fait directement via l'host "db" en interne entre les conteneurs. Pour cette même raison, la connexion n'est pas sécurisée et n'utilise pas SSL. Ce n'est pas grave, puisque celle-ci est interne entre les conteneurs.

![](https://i.imgur.com/ABenFJy.png)

![](https://i.imgur.com/eSjCo4E.png)

![](https://i.imgur.com/GbEYapu.png)

## Etherpad

![](https://i.imgur.com/YTkuIiF.png)

![](https://i.imgur.com/EvKmwVF.png)

## Api

![](https://i.imgur.com/aqRuAXh.png)

## Front doodle

![](https://i.imgur.com/xxZraty.png)

![](https://i.imgur.com/1blGaQA.png)

![](https://i.imgur.com/MUMwLP8.png)

## Commandes utiles

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
