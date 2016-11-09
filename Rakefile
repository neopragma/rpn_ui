require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
#require 'sinatra'

Cucumber::Rake::Task.new :features do |t|
  t.profile = "html_report"
end

Cucumber::Rake::Task.new :interactive do |t|
  t.profile = "pretty"
end

task :default => :features



