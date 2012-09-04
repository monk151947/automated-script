p ARGV[0]
system "git clone " + " " + ARGV[0]
p ARGV[1]
Dir.chdir ("#{ARGV[1]}") do
system "rvm gemset create #{ARGV[1]}"
system "rvm use @#{ARGV[1]}"
system "bundle install"
system "rake db:create"
system "rake db:migrate"
system "rails server &"
end

