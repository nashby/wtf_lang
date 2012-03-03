# wtf_lang [![TravisCI](https://secure.travis-ci.org/nashby/wtf_lang.png?branch=master)](http://travis-ci.org/nashby/wtf_lang)

Can't stop dreaming about an easy language detector? Just use wtf_lang!

### Install

    gem install wtf_lang

### Usage
    
```ruby
require 'wtf_lang'
  
WtfLang::API.key = "your_api_key" # you can get it here http://detectlanguage.com/

"ruby is so awesome!".lang # => "en"
"ruby is so awesome!".full_lang # => "ENGLISH"

# numeric value between 0-1.0 that represents 
# the confidence level in the language code for the given text.
"ruby is so awesome!".lang_confidence # => ["en", 0.15502742]

"ruby is so awesome!".en? # => true
"ruby is so awesome!".english? # => true
```
    
If you want to cache results to make less requests to google API, use variables

```ruby
text = "ruby is so awesome!"
text.lang #=> "en"
text.full_lang #=> "english"
```
    
It works with symbols too!
    
```ruby
:"ruby is so awesome!".lang # => "en"
```

### Contributing to wtf_lang

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

### Authors

#### [Contributors](http://github.com/nashby/wtf_lang/contributors)
 - [Bernard Potocki](https://github.com/imanel)

[Vasiliy Ermolovich](http://github.com/nashby/)<br/>

### Copyright

Copyright (c) 2012 nashby. See LICENSE.txt for
further details.

