class CreateKeynoteFiles < ActiveRecord::Migration
  def change
    create_table :keynote_files do |t|
      t.references :keynote
      t.string :original_file

      t.timestamps
    end
    add_index :keynote_files, :keynote_id
  end
end
