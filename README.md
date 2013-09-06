oook
====

Tweet the sayings of [the Librarian](http://wiki.lspace.org/mediawiki/index.php/Librarian) at [Unseen University](https://en.wikipedia.org/wiki/Unseen_University) (created by [Sir Terry Pratchett](http://www.terrypratchett.co.uk/)).

Follow on Twitter: [@oook_oook](https://twitter.com/oook_oook).

## Sayings

[oook.txt](oook.txt) has what the Librarian has said.  I haven't gone through all the books yet.  Contributions welcome.

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

To schedule somewhat random tweets, I have this in my crontab (the ugly path to Ruby is because I use [RVM](http://rvm.io/)).

    SHELL=/bin/bash
    0 8,18 * * * sleep $RANDOM; /home/wtd/.rvm/rubies/ruby-1.9.3-p448/bin/ruby /home/wtd/oook/oook

$RANDOM is "a random integer between 0 and 32767" in bash.  32767 seconds is a little over nine hours.

Twitter may sometimes not post a tweet because it's too soon after an identical tweet.

## Thanks

To Sir Terry for creating Discworld.





