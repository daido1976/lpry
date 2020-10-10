require 'lpry/version'

module Lpry
  class InvalidArgument < StandardError; end
  SINGLETON_SEPARATOR = '.'.freeze
  INSTANCE_SEPARATOR = '#'.freeze

  # @param method_str [String] e.g. 'CSV.open', 'CSV#each'
  # @return [Boolean]
  def self.show_source(method_str)
    method_obj = build_method_object(method_str)
    print_source(method_obj)
    true
  end

  # @param method_str [String] e.g. 'CSV.open', 'CSV#each'
  # @return [Method, UnboundMethod]
  def self.build_method_object(method_str)
    if method_str.include?(SINGLETON_SEPARATOR)
      c, m = method_str.split(SINGLETON_SEPARATOR)
      klass = Object.const_get(c)
      klass.method(m)
    elsif method_str.include?(INSTANCE_SEPARATOR)
      c, m = method_str.split(INSTANCE_SEPARATOR)
      klass = Object.const_get(c)
      klass.instance_method(m)
    else
      raise InvalidArgument
    end
  end

  # @param method_obj [Method, UnboundMethod]
  # @return [void]
  def self.print_source(method_obj)
    puts "Lpry prints #{method_obj}"
    file_path, line = method_obj.source_location
    puts File.readlines(file_path)[line - 1..line + 5]
  end
end
