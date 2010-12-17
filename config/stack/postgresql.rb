package :postgres, :provides => :database do
  description 'PostgreSQL database'
  apt %w( postgresql postgresql-client libpq-dev libpq-dev)
  
  verify do
    has_executable 'psql'
  end

  optional :postgresql_driver
end
 
package :postgresql_driver, :provides => :ruby_database_driver do
  description 'Ruby PostgreSQL database driver'
  gem 'pg'
  
  verify do
    has_gem 'pg'
  end
  
  requires :ruby_192
end
