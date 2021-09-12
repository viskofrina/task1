# frozen_string_literal: true

class CreateMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :isbn
      t.date :released_at
      t.timestamps
    end
  end
end
