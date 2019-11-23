# usage: rake -g reset_users [CLASS=AdminUser] [PW=h4ck0rz]
task :reset_users do
  klass = ENV['CLASS'] || 'User'
  password = ENV['PW'] || 'testtest'

  puts `echo '#{klass}.unscoped.update_all encrypted_password: #{klass}.new(password: "#{password}").encrypted_password' | rails c`
end
