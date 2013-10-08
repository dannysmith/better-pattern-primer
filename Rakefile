#Rakefile

desc "Create a new pattern"
namespace :patterns do
	task :create do
		ARGV.shift
		name = ARGV.join('-')
		root = File.dirname(__FILE__)

		File.open("#{root}/patterns/#{name}.html", 'w') {|f| f.write("<div class=\"#{name}\"></div>") }
		File.open("#{root}/patterns-scss/#{name}.scss", 'w') {|f| f.write(".#{name} {}") }
		File.open("#{root}/sass/_patterns.scss", 'a') {|f| f.write("@import \"../patterns-scss/#{name}\";\n") }

	  puts "Pattern .\"#{name}\" created."
	end
end