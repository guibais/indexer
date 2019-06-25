# Indexer

Index the content of H1, H2, H3, and Links from a given Url.

## Description

This is the application template that I use for my Rails 5.2 projects. As a freelance Rails developer, I need to be able to start new projects quickly and with a good set of defaults. I've assembled this template over the years to include best-practices, tweaks, documentation, and personal preferences, while still generally adhering to the "Rails way".

For older versions of Rails, use these branches:

* [Rails 4.2.x](https://github.com/mattbrictson/rails-template/tree/rails-42)
* [Rails 5.0.x](https://github.com/mattbrictson/rails-template/tree/rails-50)
* [Rails 5.1.x](https://github.com/mattbrictson/rails-template/tree/rails-51)

## Requirements

This template currently works with:

* Rails 5.2.x
* MySQL
* jsonapi-resources

You will need Ruby on Rails ( get it here: http://railsinstaller.org/ ).
I recommend Postman too ( https://www.getpostman.com/ ).

## Installation

```
Git Clone https://github.com/guibais/indexer.git
cd indexer
```
Go to config/database.yml
set your database username and password, also change the database name for your needs.
```
bundle install
rake db:setup
rails s
```

## Usage

Create a new Indexed Url:
POST: [APIURL]/api/v1/contents
```
{
	"data": {
		"type": "contents",
		"attributes": {
			"url": "http://example.com"
		}
	}
}
```
Show All Indexed Urls:
GET: [APIURL]/api/v1/contents

Show only one Indexed Url:
GET: [APIURL]/api/v1/contents/[ID]

Delete one Indexed Url:
DELETE: [APIURL]/api/v1/contents/[ID]

## What does it do?

The application will perform the following steps:

1. Use Nokogiri to get all the desired tags(H1,H2,H3 and Links)
2. Remove some characters ("/n", multiple spaces, etc)
3. Map to a JSON
4. Save every Tag to correspondent field of the database

## What is included?

#### These gems are added

* [jsonapi_resources][http://jsonapi-resources.com/] – for JSON data patterns.
* [nokogiri][https://nokogiri.org/] – for parsing the HTML.
* [MySQL][https://www.mysql.com/] - for Database.


