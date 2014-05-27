require 'cucumber/rails'

# begin
#   require 'database_cleaner'
#   require 'database_cleaner/cucumber'

#   DatabaseCleaner.strategy = :truncation
# rescue NameError
#   raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
# end

# Around do |scenario, block|
#   DatabaseCleaner.cleaning(&block)
# end



ActionController::Base.allow_rescue = false
Cucumber::Rails::Database.javascript_strategy = :truncation
Warden.test_mode! 
World Warden::Test::Helpers
After { Warden.test_reset! }
