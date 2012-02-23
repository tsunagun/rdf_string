require "bundler/gem_tasks"

require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

desc 'Default: run unit tests.'
task :default => :spec

desc 'Test the acts_as_rdf plugin.'
RSpec::Core::RakeTask.new(:spec)
