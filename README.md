# README

This is an example app to support an astonishing rails lesson

# Install ruby 3 & rails 7
https://gorails.com/setup

# Create base app

## Create rails app locally
~~~
rails new prenom-nom
cd prenom-nom
rails server (or rails s)
~~~
check the result on your browser http://localhost:3000/
ctrl - c to close the server

## Push on GitHub
create a GitHub account
create a repository
get repo address git@github.com:github-account-name/prenom-nom.git

~~~
git add .
git commit -m "First commit"
git remote add origin git@github.com:github-account-name/prenom-nom.git
git push -u origin main
~~~

## Deploy with render.com

Go to render.com, create a free account.
Create a web app, connect to your GitHub repository
Inside "environment" tabs, add an environment variable name 'SECRET_KEY_BASE' (take the one from rails credentials:edit)
~~~
bundle lock --add-platform x86_64-linux
git add .
git commit -m "Adding Linux platform for render"
git push
~~~

#Adding postgresql in production:

-Adding "gem 'pg'" inside a production block in Gemfile

-Put "gem 'sqlite3'" inside a development block in Gemfile

-Adding "APPNAME_DATABASE_PASSWORD" inside credentials
~~~
rails credentials:edit
~~~
APPNAME_DATABASE_PASSWORD: your_uuid_generated_password_go_to_ddg_and_ask_uuid

-Adding APPNAME_DATABASE_PASSWORD inside environment tabs on render.com

-Adding parameter for production db inside config/database.yml
~~~
production:
  adapter: postgresql
  database: your_unique_app_name_db
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: your_unique_app_name
  password: <%= ENV['APPNAME_DATABASE_PASSWORD'] %>
~~~

If your address on render.com show:  "The page you were looking for doesn't exist." you're ready !!

#testing your production in local [OPTIONAL]:

bundle config set --local deployment 'true'
bundle install

-creating postgresqldb in local
createdb your_unique_app_name_db
psql your_unique_app_name_db
CREATE USER your_unique_app_name WITH ENCRYPTED PASSWORD 'password_you_put_on_credential';
GRANT ALL PRIVILEGES ON DATABASE your_unique_app_name_db TO your_unique_app_name;
\q
RAILS_ENV=production rails db:migrate

-building assets for production
RAILS_ENV=production rails assets:precompile

-launching rails server in production locally
rails s -e production
