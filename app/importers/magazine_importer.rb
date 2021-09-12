class MagazineImporter < BaseImporter
  def initialize(data)
    super data
  end

  def import
    magazines = []
    data.each do |row|
      next if row.blank?
      value = row.to_h.values[0].split(';');
      authors = value[2].split(',')
      magazine = Magazine.new(title: value[0].strip, isbn: value[1].strip, authors: Author.where(email: authors))
      magazines << magazine
    end

    Magazine.import magazines, recursive: true
  end
end