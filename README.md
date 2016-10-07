# ActiveRecord::PostgresCosts

Integrate EXPLAIN metrics into the ActiveRecord at the relation and
statement cache layers.

Integration in the statement cache ties metrics to a query that is
prepared, and the metrics can be used to make decisions about a
query. For example, deciding if an arbitrary query coming from a
(semi-)untrusted source is too expensive to run, or choosing the most
performant query from a set of isomorphic queries.

Similar to [pg-eyeballs](https://github.com/bradurani/pg-eyeballs),
except more deeply embedded into ActiveRecord.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-postgres_costs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-postgres_costs


## Usage

TODO: Write usage instructions here


## Development

After checking out the repo, run `bin/setup` to install
dependencies. Then, run `rake test` to run the tests. You can also run
`bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run
`bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake
release`, which will create a git tag for the version, push git
commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/Marketcircle/activerecord-postgres_costs.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
