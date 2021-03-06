# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/postgres_costs/version'

Gem::Specification.new do |spec|
  spec.name          = 'activerecord-postgres_costs'
  spec.version       = ActiveRecord::PostgresCosts::VERSION
  spec.authors       = ['Mark Rada']
  spec.email         = ['mrada@marketcircle.com']

  spec.summary       = 'Integrate Postgres EXPLAIN ANALYZE powers into Active Record'
  spec.homepage      = 'https://github.com/Marketcircle/activerecord-postgres_costs'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^test/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '~> 5.0.0'
  spec.add_dependency 'pg', '>= 0.19'
  spec.add_development_dependency 'bundler', '~> 1.13'
end
