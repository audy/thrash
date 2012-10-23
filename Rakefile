# encoding: utf-8

require 'rubygems'
require 'bundler'
require './lib/thrash/version.rb'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "thrash"
  gem.homepage = "http://github.com/audy/thrash"
  gem.license = "MIT"
  gem.summary = %Q{Randomly write to many, many files}
  gem.description = %Q{Randomly write to many, many files using an in-memory buffer}
  gem.email = "harekrishna@gmail.com"
  gem.authors = ["Austin G. Davis-Richardson"]
  gem.version = Thrash::Version::STRING
  # dependencies defined in Gemfile
end

Jeweler::RubygemsDotOrgTasks.new
