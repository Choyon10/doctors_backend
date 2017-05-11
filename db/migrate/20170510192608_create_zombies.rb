class CreateZombies < ActiveRecord::Migration[5.1]
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
