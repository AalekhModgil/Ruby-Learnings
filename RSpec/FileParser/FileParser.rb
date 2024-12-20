# Create RSpec tests for a FileParser class that reads a CSV file and returns its contents as an array of hashes. 
# Include tests to handle cases where the file is empty or improperly formatted.

require 'csv'

class FileParser

  class InvalidCSVError < StandardError; end

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    begin
      csv_content = CSV.read(@file_path, headers: true)
      return [] if csv_content.empty?
      
      expected_column_count = csv_content.headers.size
      csv_content.each do |row|
        # Ensure consistent column count
        if row.fields.size != expected_column_count
          raise FileParser::InvalidCSVError, "Row has inconsistent column count"
        end
      end
      csv_content.map { |row| row.to_hash }
    rescue CSV::MalformedCSVError
      raise FileParser::InvalidCSVError, "Invalid CSV format"
    rescue Errno::ENOENT
      raise Errno::ENOENT, "File not found"
    end
  end
end

# file_parser = FileParser.new("file.csv")
# parsed_data = file_parser.parse
# puts "Parsed data :- #{parsed_data}"

