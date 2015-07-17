system("heroku pg:reset DATABASE --confirm spree-sandbox-gramercy")
system("heroku rake db:migrate")
system("heroku rake db:seed")