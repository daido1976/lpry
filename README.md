# Lpry

Lpry aims to be a light-weight [pry](https://github.com/pry/pry). Mainly wants to support [Documentation Browsing](https://github.com/pry/pry#documentation-browsing).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lpry'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install lpry

## Usage

Only supports `show_source` now, but this is also incomplete.

```sh
$ irb

> require 'csv'
> Lpry.show_source 'CSV.open'
#=> Output the source of `CSV.open`
> Lpry.show_source 'CSV#each'
#=> Output the source of `CSV#each`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/daido1976/lpry. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/daido1976/lpry/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lpry project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/daido1976/lpry/blob/master/CODE_OF_CONDUCT.md).
