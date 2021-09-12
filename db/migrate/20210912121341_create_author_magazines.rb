class CreateAuthorMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :author_magazines do |t|
      t.belongs_to :author
      t.belongs_to :magazine
      t.timestamps
    end
  end
end
