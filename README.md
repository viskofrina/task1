# README

* Ruby version

## Import data with these commands
* Imports::FileImporter.new('Parsers::CsvParserCreator', "app/files/authors.csv", "AuthorImporter").call
* Imports::FileImporter.new('Parsers::CsvParserCreator', "app/files/books.csv", "BookImporter").call
* Imports::FileImporter.new('Parsers::CsvParserCreator', "app/files/magazines.csv", "MagazineImporter").call

## Search by isbn
* Magazine.search_by_isbn("2547-8548-2541")
* Book.search_by_isbn("1215-4545-5895")


## Improvements
* Add factories for the importes also
* Use presenters for the views
* Dockerize the app
* CSV parsing in the importes should be better. Using some method to parse the data better
* Use Builders for more complex creation in the importers
* Use faker gem in tests
* Add same test for magazines as for the books