# --------------- DÉBUT COUCHE OS -------------------
FROM php:7.4
# --------------- FIN COUCHE OS ---------------------


# MÉTADONNÉES DE L'IMAGE
LABEL version="0.1" maintainer="MEL <contact@lillemetropole.fr>"

RUN apt update && apt install -y git curl zip unzip libldap2-dev libxml2-dev wget

RUN docker-php-ext-install ldap soap intl
