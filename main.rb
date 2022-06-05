# frozen_string_literal: true

$LOAD_PATH << File.dirname(__FILE__)

# Deps
require 'logger'
require 'zeitwerk'

# Autoloader
loader = Zeitwerk::Loader.new
loader.push_dir("#{__dir__}/lib")
loader.setup

if $PROGRAM_NAME == __FILE__
  # Program execution goes here
  example = Example::Sample.new
  puts "Finished Successfully! Example: #{example}"
  exit 0
end
