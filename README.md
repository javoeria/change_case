# ChangeCase

Transform a string between `camelCase`, `PascalCase`, `Capital Case`, `snake_case`, `kebab-case`, `CONSTANT_CASE` and others.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add change_case
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install change_case
```

## Usage

```ruby
require "change_case"

ChangeCase.camel("TEST_VALUE") # "testValue"
```

Included case functions:

| Method     | Result      |
| ---------- | ----------- |
| `camel`    | `twoWords`  |
| `capital`  | `Two Words` |
| `constant` | `TWO_WORDS` |
| `dot`      | `two.words` |
| `kebab`    | `two-words` |
| `no`       | `two words` |
| `pascal`   | `TwoWords`  |
| `path`     | `two/words` |
| `sentence` | `Two words` |
| `snake`    | `two_words` |
| `train`    | `Two-Words` |

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/javoeria/change_case.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
