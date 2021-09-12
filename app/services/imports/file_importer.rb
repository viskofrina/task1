module Imports
  class FileImporter
    def initialize(factory_name, file_path, importer_name)
      @factory = Object.const_get factory_name
      @file_path = file_path
      @importer = Object.const_get importer_name
    end

    def call
      begin
        parser = factory.new.factory_method(file_path)
        data = parser.parse
        importer.new(data).import
      rescue => exception
        error_message = exception.message
      end
    end

    def valid?
      error_message.present?
    end

    private
      attr_accessor :error_message
      attr_reader :factory, :importer, :file_path
  end
end