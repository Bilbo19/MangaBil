class AddPhotoToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :photo, :string
    add_column :mangas, :string, :string
  end
end
