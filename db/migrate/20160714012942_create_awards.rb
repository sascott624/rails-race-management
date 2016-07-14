class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.integer :type, default: 0
      t.references :runner_id, foreign_key: true
      t.references :race_id, foreign_key: true
    end
  end
end
