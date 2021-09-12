require 'csv'

class CsvParser < BaseParser
  def initialize(file_path)
    super file_path
  end

  def parse
    csv = File.read(file_path)
    CSV.parse(csv, headers: true)
  end
end