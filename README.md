# Installation

This program is prepared to be delivered on OpenShift, using the cartridge for Ruby 2.5 and a postgresql database


## Deployment environment variables

DATABASE_SERVICE_NAME = name of database
POSTGRESQL_USER = user to connect to the postgresql database
POSTGRESQL_PASSWORD  = password for postgresql
POSTGRESQL_DATABASE = name of database to connect to
POSTGRESQL_MAX_CONNECTIONS  = 100
POSTGRESQL_SHARED_BUFFERS = 12MB
RAILS_ENV = production
SECRET_KEY_BASE = value for the secret key base
GMAIL_USERNAME = name of the account to be used to send emails
GMAIL_PASSWORD
GMAIL_DOMAIN = gmail.com
MAIL_URL = public address of the service to be used in emails (so it can be redirected). Equal to the root of the UI