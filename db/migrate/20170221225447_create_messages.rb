class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.datetime :invoked_at

      t.timestamps
    end
  end
end
