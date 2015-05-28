require 'bundler/setup'
require 'rake'
require 'rake/testtask'
require 'simplecov'

task :test do
  SimpleCov.start do
    add_filter "/test/"
  end
  Rake::TestTask.new do |t|
    t.libs << "test"
    t.pattern = "test/**/*_test.rb"
    t.verbose = false
  end
end

task :default => :test
