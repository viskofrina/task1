task :import_csv_file, [:parser_name, :file_name, :importer_name] do |t, args|
  FileImporter.new(args[:parser_name], file_name, args[:importer_name]).call
end