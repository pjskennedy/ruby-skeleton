# frozen_string_literal: true

require File.expand_path '../main.rb', __dir__

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end