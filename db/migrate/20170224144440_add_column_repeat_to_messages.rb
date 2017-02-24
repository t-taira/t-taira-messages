class AddColumnRepeatToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :repeat, :boolean
  end
end
