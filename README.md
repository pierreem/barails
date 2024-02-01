# README

This is an example app to support an astonishing rails lesson

#install

#create base app

## create rails app locally
~~~
rails new barails
cd barails
rails server (or rails s)
~~
check the result on your browser http://localhost:3000/
ctrl - c to close the server

## Push on github
create an github account
create a repository
get repo addresse git@github.com:pierreem/barails.git

~~~
git add .
git commit -m "First commit"
git remote add origin git@github.com:pierreem/barails.git
git push -u origin main
~~~

## Deploy with render
~~~
bundle lock --add-platform x86_64-linux
