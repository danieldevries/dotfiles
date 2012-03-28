# based on Ryan Bates install rake task
# see https://github.com/ryanb/dotfiles

desc "install dotfiles in user's home directory."
task :install do
  include Dotfiles::InstallMethods

  overwrite_all = false
  Dir['*'].each do |file|
    next if %w(Rakefile bash zsh README.md).include? file
    target = "#{ENV['HOME']}/.#{file}"

    unless File.exist? target
      install_file file
    else
      if File.identical?( file, target)
        puts "identical ~/.#{file}"
      elsif overwrite_all
        replace_file file
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_file file
          overwrite_all = true
        when 'y'
          replace_file file
        when 'q'
          puts "quitting"
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    end
  end
end

task :default => :install

module Dotfiles
  module InstallMethods
    def install_file path
      puts "linking ~/.#{path}"
      system %Q{ln -s "$PWD/#{path}" "$HOME/.#{path}"}
    end
    def remove_file path
      puts "removing ~/.#{path}"
      system %Q{rm -rf "$HOME/#{path}"}
    end
    def replace_file path
      remove_file path
      install_file path
    end
  end
end
