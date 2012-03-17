# based on Ryan Bates install rake task
# see https://github.com/ryanb/dotfiles

desc "install dotfiles in user's home directory."
task :install do
  overwrite_all = false
  Dir['*'].each do |file|
    next if %w(Rakefile bash zsh README.md).include? file
    target = "#{ENV['HOME']}/.#{file}"
    
    unless File.exist? target
      Dotfiles.link file
    else
      if File.identical? file, target
        puts "identical ~/.#{file}"
      elsif overwrite_all
        Dotfiles.replace file
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          Dotfiles.replace file
          overwrite_all = true
        when 'y'
          Dotfiles.replace file
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
  class << self
    def link path
      puts "linking ~/.#{path}"
      system %Q{ln -s "$PWD/#{path}" "$HOME/.#{path}"}
    end

    def remove path
      puts "removing ~/.#{path}"
      system %Q{rm -rf "$HOME/#{path}"}
    end

    def replace path
      remove path
      link path
    end
  end
end