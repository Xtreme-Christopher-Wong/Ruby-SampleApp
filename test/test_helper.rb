ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
require 'minitest/reporters'

# Fix the "minitest_plugin.rb:9:in" error
# >https://stackoverflow.com/questions/43929510/michael-hartl-chapter-3-3-1-rails-test-error-messag
# >>http://motion-express.com/blog/minitest-setup-for-rails
Minitest::Reporters.use!(
  Minitest::Reporters::ProgressReporter.new,
  ENV,
  Minitest.backtrace_filter
)
end
