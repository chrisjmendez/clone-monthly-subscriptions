

## Pre-setup

[Installing Ruby on Rails on OS X]().



## Steps

### Pre-install

Update ```homebrew```
```language-bash
brew doctor && brew update
```

Install ```mysql``` driver using Homebrew
```language-bash
brew install mysql
```

### New Rails App

Create new ```rails``` app with ```mysql``` as the default.
```language-bash
rails new <my_rails_app> --database=mysql
```

### Install Devise

Install this line of code to ```my_rails_app/Gemfile```
```language-bash
gem 'devise'
```

Install the Devise gem
```language-bash
bundle install 
```

Initialize Devise gem
```language-bash
rails generate devise:install
```

Copy this to ```config/environments/development.rb```
```language-bash
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } 
```


Copy this to ```config/routes.rb```
```language-bash
root to: "home#index"
```

Create a new <home> controller with a view named <index>
```language-bash
rails generate controller home index
```

Insert Flash messages into ```/config/application.rb```
```language-bash
 <p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>
```


Create the Devise Model
```language-bash
rails generate devise User
```

Update Database
```language-bash
rake db:migrate
```

# Creating Admin and Subscriber Views (through Devise)
```
rails g migration add_is_admin_to_users is_admin:boolean
```


### Configure Devise




```language-bash
```


## Using gem RERUN to watch when files change

I prefer ```rerun``` over ```livereload```.  

**Installing Rerun in NVM**

RVM you might want to put this in your global gemset so it's available to all your apps
```
rvm @global do gem install rerun
```

Start your rails app with rerun
```
rerun --dir config rails s
```



---




## Using Devise for Authentication

**Routes**

Devise is great because it provides certain conventions to authenticate users

```language-bash
#Sign In User
/users/sign_in

#Sign Out User
/users/sign_out

#Sign Up User
/users/sign_up
```

**Helpers**

Devise Helpers are a handy set of functions that keep your code down to a minimum.

```language-bash
#Authenticate a User can be used before any controller action to validate the user
authenticate_user

#Check if User is signed in by stating either true/false
user_signed_in?

#Get current user is a reference to the signed in user
current_user
current_user.email

#Get user session 
user_session
```

**Modules**

Devise also offers "modules" for additional stuff such as: ```:database_authenticatable```, ```:registerable```, ```:recoverable```, ```:rememberable```, ```:trackable```, ```:validatable```. 

- Encrypting Passwords through **Encrypt Password**
- oAuth Authentication through **OmniAuth**
- E-mail confirmation
- Password Recovery
- Lock Account
- Expire Session



---



```language-bash
```


## Gems

- [Devise](https://github.com/plataformatec/devise)
- [Jade Templates](http://www.sitepoint.com/integrating-jade-templates-into-rails-for-cleaner-templates/)

- [Administration](): Cancan, pundit, rolify


## Scaffolding Tricks

[rails g scaffold_controller ClassName](http://stackoverflow.com/questions/2504123/generate-a-controller-with-all-the-restful-functions)



