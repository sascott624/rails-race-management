class CreateRunners < ActiveRecord::Migration[5.0]
  def change
    create_table :runners do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
    end
  end
end
