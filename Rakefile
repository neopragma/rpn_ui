require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

desc "Run rpn_ruby unit tests"
task :unit do        
  exec "rspec spec/lib/rpn_ruby"
end

desc "Run rpn_service tests"
task :service do      
  exec "rspec spec/lib/rpn_service"
end

task :default => :spec