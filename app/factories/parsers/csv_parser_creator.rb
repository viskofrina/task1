module Parsers
  class CsvParserCreator < Creator
    def factory_method(*args)
      CsvParser.new(*args)
    end
  end
end