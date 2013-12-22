class CreateOwnerPets < ActiveRecord::Migration
  def change
    create_table :owner_pets do |t|
      t.integer :pet_id,    null: false
      t.integer :owner_id,  null:false

      t.timestamps
    end
  end
end
