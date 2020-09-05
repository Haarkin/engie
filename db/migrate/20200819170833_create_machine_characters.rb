class CreateMachineCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :machine_characters do |t|
      t.string :name
      t.string :value
      t.string :desc
      t.integer :machine_id

      t.timestamps
    end
  end
end
