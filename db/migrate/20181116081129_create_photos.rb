class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :subject
      t.attachment :photo

      t.timestamps
    end
  end
end
