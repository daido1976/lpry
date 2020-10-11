require 'lpry/version'
require 'lpry/show_source'

module Lpry
  # Show the source for a method.
  #
  # @param method_str [String] e.g. 'CSV.open', 'CSV#each'
  # @param lines [Integer] number of output lines
  # @return [Boolean]
  def self.show_source(method_str, lines = 10)
    ShowSource.new(method_str, lines).execute
    true
  end
end
