# Social-Network-API (Working Title)

This is a social network API built using Ruby on Rails. The goal of this project is to create the basis for a social network that can be easily customized and deployed, then used with any front-end framework. The primary reason for creating this project was to gain more experience building API's using rails. Once this project is complete (or at least partially) I hope to build out a front end using a few different frameworks. Firstly in React to help myself learn that library then in Angular to cement the skills I've already learned. So really this project is mostly designed as a learning tool for myself but anyone is welcome to utilize the api for whatever they like.
## Getting Started

For the time being this project is under development and will be undergoing changes regularly. As much as possible I will try to keep the master branch stable and functioning. These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Rails
A computer
Postgressql


### Installing

enter the following commands in the terminal
1. $ git clone https://github.com/passwordiscomputer/social-network-api.git
2. navigate to projects root directory
3. $ bundle install
4. $ rails db:create
5. $ rails db:migrate
6. $ rails serve

You are now up and running.

### Basic usage instructions

####Creating a user account
This section assumes you are using port 3000, if not just replace 3000 with the port number you are using.

```
post
http://localhost:3000/users?name=Bill&email=bill@bill.com&password=12341234&password_confirmation=12341234
```
This will create a new user and profile and add it to the database

after this step

```
post
http://localhost:3000/authenticate?email=bill@bill.com&password=12341234
```

will return the auth key to use as a header with the title authorization. it will be valid for 24 hours

####Submitting a Post


```
post
http://localhost:3000/posts?title=making new posts is easy&body=just follow the instructions
```
you can include any image file type in the body to submit with the post using the the key picture

####Following another user
```
post
localhost:3000/follows?user_id=6
```
follow user with that id.

####Displaying Profile

to display the logged in users profile
```
get request
http://localhost:3000/profiles
```
to display a different users profile
```
get request
http://localhost:3000/profiles?user_id=6
```



## In Progress Features

[] create messaging system for interaction between users
[] create comment model for commenting on posts

## Future Features

[] alternative to token based authentication
[] add voting to posts using acts_as_votable

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


####Some stuff for epicodus

Name of Student: Chase Bowden

Name of Project: Social Network API

Project’s Purpose or Goal: It will allow a user to use the api as a backbone for a social network they can develop and manage using any front end network they choose.

List the absolute minimum features the project requires to meet this purpose or goal:
A user model that can have relationships with other users. A messaging system. A post system. A user authentication scheme. Excellent documentation for deploying and utilizing the api.

Tools, frameworks, libraries, APIs, modules and/or other resources:
1. Rails --api
2. BCRYPT
3. acts_as_votable, acts_as_follower, and acts_as_commentable gems
4. jwt gem
5. simple_command gem
6. Probably many other gems but as far as frameworks only Rails will be utilized


If you finish developing the minimum viable product (MVP) with time to spare, what will you work on next? Describe these features here: Be specific.
1. one or multiple sample front end environments utilizing the framework
2. Mailer Support


What additional tools, frameworks, libraries, APIs, or other resources will these additional features require?
1. javascript/angular/react?
2. some Rails mailer gem


Gems used
https://github.com/jackdempsey/acts_as_commentable
