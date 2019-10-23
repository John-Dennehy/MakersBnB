require 'pg'

task :install_db do
  connection = PG.connect
  p 'Creating Database: makers_bnb'
  connection.exec("CREATE DATABASE makers_bnb;")

  p 'Creating Database: makers_bnb_test'
  connection.exec("CREATE DATABASE makers_bnb_test;")
  p "Giving db access to 'bnb_manager' Default password: 'password'"
  connection.exec("grant all privileges on database makers_bnb to bnb_manager;")
  connection.exec("grant all privileges on database makers_bnb_test to bnb_manager;")
end

task :create_bnb_manager do
  p "Creating user 'bnb_manager' and giving access to db - Default password: 'password'"
  connection.exec("create user bnb_manager with encrypted password 'password';")
end

task :drop_db do
  connection = PG.connect
  p 'Deleting Database: makers_bnb'
  connection.exec("DROP DATABASE makers_bnb;")
  p 'Deleting Database: makers_bnb_test'
  connection.exec("DROP DATABASE makers_bnb_test;")
end


