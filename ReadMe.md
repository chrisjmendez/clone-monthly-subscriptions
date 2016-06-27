# Pre-setup

[Installing Ruby on Rails on OS X](http://www.chrisjmendez.com/2016/05/06/installing-ruby-on-rails-on-osx-using-rbenv/).



---



# Getting Started



## Create a New App

Create new ```rails``` app with ```mysql``` as the default.
```language-bash
rails new <my_rails_app> --database=mysql
```


## Starting your Web Server using ```rerun```

Default rails comes with Webrick but I dislike having to stop and restart my web server regularly. Instead, I use [```rerun```](https://github.com/alexch/rerun) to monitor my file edits and restart the server every time I make a change. [```livereload```](https://github.com/guard/guard-livereload) is also very popular.


```language-bash
rerun --dir config rails s
```



---




# Rails-specific commands

I generally recommend that new rails developers get into the habit of manually creating their own controllers, routes, view templates and partials but scaffolding can come in handy too.


## Models

Models are the classes that you use to populate and retrieve data from a database. They're exceptionally useful for validating data before you write anything to a database so treat them with kindness and respect. 

### Creating a Model
```language-bash
rails g model mymodel title:string description:text file_url:string
```



## Controllers

Controllers are the methods you use to access data, manipulate it, and publish it to view templates.  These methods are oftentimes accessed by ```admin/routes``` which are triggered by REST requests. 

### [Scaffolding a Controller]((http://stackoverflow.com/questions/2504123/generate-a-controller-with-all-the-restful-functions)

```language-bash
rails g scaffold_controller ClassName
```

is the shorthand way of writing this:

```language-bash
rails g controller mycontroller new create update edit destroy index show
```

### Fixing a Mistake

If you mess up your command and you need to re-build your controller, I suggest trying this. It will re-create (and forcefully overwrite) your controller and views and skip the migration. 

```language-bash
rails generate mycontroller new create update edit destroy index show --migration=false --skip -f
```


---



## Other Gems

- [Devise](https://github.com/plataformatec/devise) is great for creating a user authentication system. If you need signup, log in, log out and sign out, Devise is perfect for your eneds.

- [Jade Templates](http://www.sitepoint.com/integrating-jade-templates-into-rails-for-cleaner-templates/) are easier to work with than ```erb``` and ```slim```. This is a personal preference but I also prefer Jade because it works with Node and ExpressJS.

- [Administration](): If you need a complicated user system with permissions and governance. ```Cancan```, ```pundit```, ```rolify``` are very popular. 



