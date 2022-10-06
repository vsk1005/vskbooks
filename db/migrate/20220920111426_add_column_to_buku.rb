class AddColumnToBuku < ActiveRecord::Migration[7.0]
  def change
    add_column :bukus, :publish, :string
  end
end
