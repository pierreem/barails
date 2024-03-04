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
Inside "environment" tabs, add an environment variable name 'SECRET_KEY_BASE' (use generate for the value)
~~~
bundle lock --add-platform x86_64-linux
git add .
git commit -m "Adding Linux platform for render"
git push
~~~

If your address on render.com show:  "The page you were looking for doesn't exist." you're ready !!
