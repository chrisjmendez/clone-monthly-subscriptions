# Pre-setup

[Installing Ruby on Rails on OS X](http://www.chrisjmendez.com/2016/05/06/installing-ruby-on-rails-4-x-on-on-osx-using-rbenv/).


### Pre-install

Update ```homebrew```

```language-bash
brew doctor && brew update
```

Install ```mysql``` driver using ```homebrew```.

```language-bash
brew install mysql
```




### New Rails App

Create new ```rails``` app with ```mysql``` as the default.
```language-bash
rails new <my_rails_app> --database=mysql
```


---



## Start your web server with Rerun

I prefer ```rerun``` over ```livereload```.  

**Installing Rerun in NVM**

RVM you might want to put this in your global gemset so it's available to all your apps

```language-bash
rvm @global do gem install rerun
```

Start your rails app with rerun

```language-bash
rerun --dir config rails s
```


---




## Gems

- [Devise](https://github.com/plataformatec/devise)
- [Jade Templates](http://www.sitepoint.com/integrating-jade-templates-into-rails-for-cleaner-templates/)

- [Administration](): Cancan, pundit, rolify


## Scaffolding Tricks

[rails g scaffold_controller ClassName](http://stackoverflow.com/questions/2504123/generate-a-controller-with-all-the-restful-functions)

