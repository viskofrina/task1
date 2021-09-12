class AuthorImporter < BaseImporter
  def initialize(data)
    super data
  end

  def import
    authors = []
    keys = ['email',"firstname", "lastname"]
    data.each do |row|
      next if row.blank?
      value = row.to_h.values[0].split(';');
      authors << Author.new(email: value[0].strip, first_name: value[1].strip, last_name: value[2].strip)
    end

    Author.import authors
  end
end