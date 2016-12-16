#Makers BnB

[![Stories in Ready](https://badge.waffle.io/kwilson541/makersbnb.png?label=ready&title=Ready)](http://waffle.io/kwilson541/makersbnb)


```
                 :              _   _
                  :               `v'
         `.       ;       .'                 ,~-.
           `.  .-'''-.  .',~')       _ _    (    )~.
             ;'       `; (    `-.   ' V `  ,'       )~.  _ _
            /           ;-`      )        (          __)' v `
           |           (_         )~./\    `~'--~'`~' _
      '''''|            (_    __    /##\            ,' )_
            \           /(   _HH_,~/#/\#\          ( c'  `._
             `.       .'  `~[____]/#/==\#\       ,-' -' (_c )
            .' `-,,,-' `.    |=_|/#/= _=\#\      `>o  ~    '-.
          .'      ;      `.  |-=/#/=____=\#\     ( ~ ,~.~.,`-'),
           _  _   :        ` |=/#/=/,~~.\=\#\    ,' (\\||,' `-'),
         .' \/ `. :          |/#/=(/_)(_\)=\#\  (`~ (_\`|)o ~   )
                             /#/_= |_\/_|  _\#\  >(   `~' ._,~ '-.
                            /#/ _=[______]= _\#\(' `~,  c    ~. c)
                           /#/=,---. _ = ___ =\#\`( (  ~ _.'   <'
                          /#/ /_____\ ==/,-.\ =\#\(  c   c___ ) )
                          `|=(/_|_|_\) //.-.\\=_|' `-.__,' //`-'
                        `v@|==| : : |=(/:|_|:\)=|   `,-\ `'/`,-
                      `v@'~|= |_;_;_| =|     | =|       \ |
              _/\_/\_,(c`@'|=[_______]=|  =()|==|_/\_/\_| |/\_
              -||-||-@~'(_@|= _o@&8o_ =|     | =|-||-||-( |||-
             _,@`v-@'~ c@._|_['%8o&8']_|_____|__| || || | )||
           ,@C @,~' @,-v~'    """""""`[_______]         | |
             'v-~,@,`    (\-/)        /     / `*~   _.-'   `-.
                        ={   }=   ~*'(     (          `*
                 `*       ) (         \     `.~*'          
                        _/   \_     `*~\      `.
                  `*    \     /         \       `.`*'
            *'           `-))'       `*' \        `.       *'
                          ((     `*       \         `.
                           \)

```

User Stories
============
```
As a user,
So that I can use MakersBnB,
I want to be able to sign up for an account.
```
```
As a user,
So that only I can control my account,
I want to be able to log in and log out.
```
```
As a property-owner,
So I can lease out my property,
I want to be able to list a new space.
```
```
As a property-owner,
So that I can lease out more than one property,
I want to be able to list multiple spaces.
```
```
As a property-owner,
So that I can specify the dates my property is available,
I want to be able to offer a range of dates.
```
```
As a property-owner,
So that I can select who can rent my property,
I want to be able to approve requests.
```
```
As a property-owner,
So that I don’t get double booked,
Nights that have already been booked should not be listed as available.
```
```
As a renter,
So that I can choose a property to rent,
I want to see details including name, description and price.
```
```
As a renter,
So that I can hire a property,
I want to be able to request to stay at a property.
```
```
As a renter,
So that I do not select a property that is unavailable,
I only want to see properties that have not been booked.
```
```
As a renter,
So that I am guaranteed my space,
I would like the property-owner to confirm my booking.
```

Heroku url
===========
You can see our Makersbnb app [here](https://shrouded-sea-19376.herokuapp.com/)

Description
===========
This is the week 6 project at Makers Academy. The task was to design an AirBnB clone - MakersBnB! The collaborators on this project were:
* [Leke Abolade](https://github.com/aabolade)
* [Simon Conway](https://github.com/simonconway1979)
* [Asuka Ochi](https://github.com/fenglish)
* [Teako Warfield-Graham](https://github.com/trose16)
* [Kim Wilson](https://github.com/kwilson541)

Our goal was to create a product that catered to the user stories listed above. Our final product had the following specification:
* Users can sign up to MakersBnB
* Users can log in/log out to MakersBnB
* Users can create one or more listings on MakersBnB - but only if they are logged in
* Listings include a property name, description, price, location, and availability
* Users can view listings on MakersBnB
* Users can request a listing on MakersBnB - but only if they are logged in
* Users can view the requests they have made, and the requests they have received
* Users can deny or confirm a request made on one of their listings

Technologies
============
* Sinatra: Ruby Framework
* Rspec/Capybara: For unit and feature testing
* DataMapper: ORM
* Database Cleaner: To clear the databases before/after each test
* Rake: Rakefile made with database upgrade/migrate options
* BCrypt: For user password encryption
* Sinatra-Flash: For displaying notices/errors to users
* Waffle.io: Used during development of the app to monitor GitHub issues

Setup
=====
In order to run this program, you will need to create two databases on your machine. One will allow you to run the tests, the other will allow you to trial the app in development mode. These databases can be set up using PSQL as follows:

1. Open a terminal  
2. Enter `psql` into the command line  
3. Enter `CREATE DATABASE makersbnb_test;` to create the test database  
4. Enter `CREATE DATABASE makersbnb_development;` to create the development database  
5. Enter `\q` to quit  



Once the databases have been created you may set up the app as follows:

1. Fork this repo  
2. Clone your forked repo to a desired folder on your computer  
3. If you have the bundle gem installed, run `bundle` to install the gems needed for this app. (If you do not have bundle installed, run `gem install bundle` first.)  
4. Run `rspec` to perform the tests  



To play with the app in the development environment:

1. Run `rackup` to launch a local server  
2. In your preferred browser, navigate to `localhost:9292`  



Notes
=====
Challenges
----------
Initially we had some difficulties setting up our one-to-many relationships between the listings/users models and the requests model. After some research and a great deal of debugging, we found that the issue was due to the naming of a variable we had been using in our controller `@request`. We have used Sinatra to create our app, and Sinatra also uses a variable with the same name when handling HTTP requests. Our use of a variable with the same name meant that an error was raised by Sinatra. We decided to rename our request model to "Booking" in order to resolve this.

Extra Features
--------------
There are several additional features which we had considered and would have liked to implement:
* jQuery calendar: Allows users to select a range of dates through a drop down calendar. This would be used when users create a listing and set its availability, and when users request a listing and choose the dates they wish to book. Calendar also greys out dates which are unavialble for a given listing.
* Images: Allow users to upload images of their property to the app. These images would then be displayed on each listing.
* Email notification: Send users emails when they have received a request on one of their listings, or when one of their booking requests has been confirmed.
* Price calculation: When users make a request on a listing and enter the dates they wish to book, the total cost of their stay will be calculated and displayed.
* Stripe integration for basic payment implementation
* A 'chat' functionality once a space has been booked, allowing users who have made a book to communicate with their hosts.
