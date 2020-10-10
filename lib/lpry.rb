require 'lpry/version'

module Lpry
  class InvalidArgument < StandardError; end

  # @params method_str [String] e.g. 'CSV.open', 'CSV#each', 'csv.each'
  # @return [Boolean]
  def self.show_source(method_str)
    if method_str.include?('.')
      c, m = method_str.split('.')
      klass = Object.const_get(c)
      method_obj = klass.method(m)

      puts "Lpry prints #{method_obj}"

      file_path, line = method_obj.source_location
      puts File.readlines(file_path)[line - 1..line + 5]
      true
    elsif method_str.include?('#')
      # TODO
    else
      raise InvalidArgument
    end
  end
end
