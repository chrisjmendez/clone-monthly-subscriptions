
Drop the database

```
rake db:drop
```

Create a new Database

```
rake db:create 
```

Migrate the database 

```
rake db:migrate
```

Populate the database
```
rake db:seed
```

Double check your work
```language-bash

mysql -u root ror-subscriptions_development

show tables;

select * from users;
select * from features;
```


