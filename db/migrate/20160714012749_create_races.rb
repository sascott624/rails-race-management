class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :title
      t.string :location
      t.integer :difficulty
    end
  end
end
