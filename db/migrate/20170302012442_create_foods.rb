class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :serving_size, default: 1
      t.integer :serving_type_id

      t.integer :calories
      t.float :total_fat
      t.float :saturated_fat
      t.float :trans_fat
      t.float :cholesterol
      t.float :sodium
      t.float :potassium
      t.float :total_carbohydrate
      t.float :dietary_fiber
      t.float :sugars
      t.float :protein

      t.timestamps null:false
    end
  end
end
