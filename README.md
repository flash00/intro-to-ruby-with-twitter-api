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
5.  Open `.env` in a text editor and add the following keys
```
TWITTER_CONSUMER_KEY=[Your Twitter API Consumer Key from Twitter Developer Console]
TWITTER_CONSUMER_SECRET=[Your Twitter API Consumer Secret from Twitter Developer Console]
```
6.  Type `bundle exec shotgun`
