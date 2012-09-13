#Redis Session Retrieve [![Build Status](https://secure.travis-ci.org/akeem/redis-session-retrieve.png)](http://travis-ci.org/akeem/redis-session-retrieve)

## The itch to scratch.
A number of applications need to share session information.

1. Application managing session information uses redis-store gem to
   control flow of information related to session.

2. Secondary applications retrieve session data from session store.

## How do I use it.

1. Setup the retrievel library by normal means. (the default should
   default redis configuration, database 0)

2. Find session data via the session id.

