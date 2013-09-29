# based on Ryan Bates install rake task
# see https://github.com/ryanb/dotfiles

task default: :install

desc "install dotfiles in the home directory."
task :install do
  overwrite_all = false
  symlinks.each do |symlink|
    target = target(symlink)
    symlink = [ENV['PWD'], symlink].join('/')

    if File.exists?(target)
      if File.identical?(symlink, target)
        puts "symlink identical #{target}"
      elsif overwrite_all
        replace_file(symlink, target)
      else
        print "overwrite #{target}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_file(symlink, target)
          overwrite_all = true
        when 'y'
          replace_file(symlink, target)
        when 'q'
          puts "quitting"
          exit
        else
          puts "skipping #{target}"
        end
      end
    else
      link_file(symlink, target)
    end
  end
end

desc "remove all symlinked files"
task :uninstall do
  symlinks.each do |symlink|
    target = target(symlink)
    remove_file(target) if File.symlink?(target)
  end
end

def symlinks
  Dir['**/*.symlink']
end

def target(symlink)
  "#{ENV['HOME']}/.#{symlink.sub(/\.symlink/, '')}"
end

def link_file(symlink, target)
  puts "linking #{symlink} to #{target}"
  system "ln -s #{symlink} #{target}"
end

def replace_file(symlink, target)
  remove_file(target)
  link_file(symlink, target)
end

def remove_file(path)
  puts "removing #{path}"
  system "rm -rf #{path}"
end
