desc "Goes to myapp.com"
task :tests_myapp do
  ruby './tests/test-file1.rb'
end


task :default => [:tests_myapp]