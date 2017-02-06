# DBC Intro to Ruby with the Twitter API
## For use during "Intro to Ruby at Dev Bootcamp, San Francisco" class

### Purpose
A Small Web Application Ruby Skeleton:

1. Provides a foundation for building a website that interacts with the Twitter API.
2. Provides a basic model/view/controller (MVC) project to allow students to understand basic web design.

### Quickstart

0.  Follow steps at the bottom of this README to create a Twitter Consumer Key/Secret
1.  Clone repository: `cd ~/Documents; git clone https://github.com/pongo-pygmaeus/intro-to-ruby-with-twitter-api`
2.  Use your terminal to access the newly created directory: `cd ~/Documents/intro-to-ruby-with-twitter-api`
3.  Type `bundle install`
4.  Make a new file called `.env`: `touch .env`
5.  Open `.env` in a text editor and add the following keys (DBC recommends either Sublime Text Editor or Atom)
```
TWITTER_CONSUMER_KEY=[Your Twitter API Consumer Key from Twitter Developer Console]
TWITTER_CONSUMER_SECRET=[Your Twitter API Consumer Secret from Twitter Developer Console]
```
Type `bundle exec shotgun`

### Twitter Developer Signup Steps

1. Visit `https://dev.twitter.com/resources/signup`
2. After signing up, visit `https://apps.twitter.com` 
3. Click on your email address
4. Click on the tab titled `Keys and Access Tokens`
5. Observe the section of the page called `Application Settings`
6. Take note of the fields called `Consumer Key (API Key)` and `Consumer Secret (API Secret)`. Use this information in step 5 of the `Quickstart` steps.