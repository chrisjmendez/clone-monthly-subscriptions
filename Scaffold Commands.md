# Models + Controllers

---


## User

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


## Home

Create a new <home> controller with a view named <index>
```language-bash
rails generate controller home index
```



## Publications

Publications Model
```language-bash
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
```
rails g model publication title:string description:text file_url:string
```

Update Database
```language-bash
rake db:migrate
```

Create a Publications controller with index and show views
```
rails generate controller publications index show
```

