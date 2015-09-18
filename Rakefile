# This Rakefile has all the right settings to run the tests inside each lab
gem 'rspec'
require 'rspec/core/rake_task'

task :default => :spec

desc "run tests for this lab"
	folders = Dir.entries(".").select{|x| x.match /\d+{2}/}
  folders.each do |foldername|
  	RSpec::Core::RakeTask.new do |task|
	  	lab = Rake.application.original_dir
	  	%x(pwd)
	  	task.pattern = "#{lab}/#{foldername}/*_spec.rb"
		  puts task.pattern
		  task.rspec_opts = [ "-I#{lab}", "-I#{lab}/solution", '-f documentation', '-r ./rspec_config']
		  task.verbose = false
		end
		%x(cd ..)
  end
  # task.pattern = "#{lab}/\d.*/*_spec.rb"
  # puts task.pattern
  # task.rspec_opts = [ "-I#{lab}", "-I#{lab}/solution", '-f documentation', '-r ./rspec_config']
  # task.verbose = false