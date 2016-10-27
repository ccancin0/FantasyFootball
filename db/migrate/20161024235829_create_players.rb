class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :injured
      t.boolean :sick
      t.boolean :suspended

      t.timestamps
    end
  end
end
