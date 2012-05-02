class CreateKeynoteSlides < ActiveRecord::Migration
  def change
    create_table :keynote_slides do |t|
      t.references :keynote
      t.references :keynote_file
      t.string :graphic_file

      t.timestamps
    end
    add_index :keynote_slides, :keynote_id
    add_index :keynote_slides, :keynote_file_id
  end
end
