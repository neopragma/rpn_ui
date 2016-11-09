require 'rubygems'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new :features do |t|
  t.profile = "html_report"
end

Cucumber::Rake::Task.new :pretty do |t|
  t.profile = "pretty"
end

task :default => :features



