class BookImporter < BaseImporter
  def initialize(data)
    super data
  end

  def import
    books = []
    data.each do |row|
      next if row.blank?
      value = row.to_h.values[0].split(';');
      authors = value[2].split(',')
      book = Book.new(title: value[0].strip, isbn: value[1].strip, authors: Author.where(email: authors))
      book.description = value[3].strip if value[3].present?
      books << book
    end

    Book.import books, recursive: true
  end
end