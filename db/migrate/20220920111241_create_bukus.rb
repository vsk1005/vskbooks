class CreateBukus < ActiveRecord::Migration[7.0]
  def change
    create_table :bukus do |t|
      t.text :title
      t.string :author

      t.timestamps
    end
  end
end
