# WordWrapGem

Word wrap allows to wrap text onto new  lines.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'word_wrap_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_wrap_gem

## Usage

To wrap a text, call wrap function and pass in two arguments, a string, and a column number. The function returns the string, but with line breaks inserted at the places based on the column parameter.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/word_wrap_gem.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
