# This Rakefile has all the right settings to run the tests inside each lab - adapted from the Rakefile of Chris Pine's "Learn Ruby"

require 'rspec/core/rake_task'

task :default => :spec

desc "run tests for this lab"
RSpec::Core::RakeTask.new do |task|
  lab = Rake.application.original_dir
  task.pattern = "#{lab}/*_rspec.rb"
  task.rspec_opts = [ "-I#{lab}", "-I#{lab}/solution", '-f documentation']
  task.verbose = false
end
