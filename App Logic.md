# Models + Controllers


## Users

User Model
```language-javascript
{
	id: "000000",
	email: "character varying",
	"encrypted_password": "character varying",
	"sign_in_count": "integer",
	"current_sign_in_at": "timestamp UTC",
	"created_at": "timestamp UTC",
	"updated_at": "timestamp UTC"
}
```

Create the Devise Model
```language-bash
rails generate devise User
```

Update Database
```language-bash
rake db:migrate
```


---


## Home

Create a new ```Home``` controller with a view named ```index```
```language-bash
rails generate controller home index
```


---


## Publications

Here's the process:

1. Create a Publication Model
- Add Administrators
- Build an administrator view for publications
- Build a subscriber view for publications


Here's what the model will look like in JSON format
```language-json
{
	"id": "0000",
	"title": "string",
	"file_url": "string",
	"description": "string",
	"created_at": "timestamp",
	"updated_at": "timestamp"
}
```

Create a Publications model 
```language-bash
rails g model publication title:string description:text file_url:string
```

Update Database
```language-bash
rake db:migrate
```

Create a Publications controller with ```index``` and ```show``` views
```language-bash
rails generate controller publications index show
```


---


## Admin Controller
```language-bash
rails g controller Admin
```

rails generate controller <namespace>/<class name>
```language-bash
rails generate controller admin/publications
```

If you mess up and you need to re-build the controller, try something like this
```language-bash
rails generate controller admin/publications index publication_params find_publication destroy update edit show new create --migration=false --skip -f
```

