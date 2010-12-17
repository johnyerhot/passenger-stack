 
package :rails, :provides => :ruby_database_driver do
  description "Rails 3"
  gem 'rails'
  
  verify do
    has_gem 'rails'
    has_gem 'bundler'
  end
  
  requires :ruby_192
end
