# Link Page

### ASDF
* Install ASDF Version Manager `https://asdf-vm.com/#/core-manage-asdf-vm`
* Run `asdf install`

### Postgres
* Currently running on Postgres 12.1
* `brew install postgresql@12`
* `brew services start postgresql`

#### Setup
* Run `bundle install` to install all the ruby dependencies
* Run `bin/rails db:create db:schema:load` to create the database
* Run `bin/rails db:seed` to seed your database with data

#### Application Server
* Run `bin/rails server` to start the server
* Go to `localhost:3000` or `www.lvh.me:3000` to see that everything is working

#### Testing
* We use the rails built in testing `ActiveSupport::TestCase` with `MiniTest`
* Run `bin/rails test` for the full test suite

#### Deployment
* Any pull request that is merged into master is automatically deployed via Heroku

#### Getting started
* We follow the trunk based development structure
* Run `git checkout master && git pull origin` to get the latest code
* Create a new branch according to the following structure (`git checkout -b initials/feature-name`)
* Commit some code and then push up and open a pull request
