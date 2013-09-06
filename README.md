oook
====

Tweet the sayings of [the Librarian](http://wiki.lspace.org/mediawiki/index.php/Librarian) at [Unseen University](https://en.wikipedia.org/wiki/Unseen_University) (created by Terry Pratchett).

## Requirements

Talking to Twitter is done with the [twitter](http://sferik.github.io/twitter/) Ruby gem.  Install it the usual way:

    # gem install twitter

## Configuration

Create an account at Twitter.  Log in to it and then to go [https://dev.twitter.com/apps/new](https://dev.twitter.com/apps/new) and create a new app, following the instructions in the twitter gem documentation.

Copy `config.json.example` to `config.json` and put all the right Twitter keys into it.

## Usage

There are two options:

    --notweet: Do not actually tweet anything
	--verbose: Be verbose

Just running

    ./oook

is enough, though.

To schedule somewhat random tweets, I have this in my crontab:

    SHELL=/bin/bash
    0 12,18 * * * sleep $RANDOM; cd ~/oook; /home/wtd/.rvm/rubies/ruby-1.9.3-p448/bin/ruby oook

$RANDOM is "a random integer between 0 and 32767" in bash.  32767 seconds is a little over nine hours.

## Thanks

To Terry Pratchett for creating Discworld.





