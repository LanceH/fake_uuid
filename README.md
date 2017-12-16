# FakeUuid

FakeUuid create a uuid format string (8-4-4-4-12) with words for each section of characters.  For example: `forensic-dyne-prau-wime-pejoratively`

This is for fun and should not be used in place of an actual UUID.  UUID's solve collisions where this definitely doesn't.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fake_uuid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fake_uuid

## Usage

It has as single class method:

```
FakeUuid.create
```


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
