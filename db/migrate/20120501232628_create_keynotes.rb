class CreateKeynotes < ActiveRecord::Migration
  def change
    create_table :keynotes do |t|
      t.string :title

      t.timestamps
    end
  end
end
