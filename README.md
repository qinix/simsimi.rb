# Simsimi

A chatting bot for ruby

## Installation

Add this line to your application's Gemfile:

    gem 'simsimi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simsimi

## Getting Started

```ruby
require 'simsimi'

# You should set a language first
# See http://developer.simsimi.com/lclist for a list
Simsimi.language('en')

res = Simsimi.chat('I love you')
puts res
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
