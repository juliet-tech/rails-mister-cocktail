class Ingredientes < ActiveRecord::Migration[5.1]
  def change
    create_table :Ingredientes do |t|
      t.string :name

      t.timestamps
  end
end
