class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.references :figure, foreign_key: true
      t.integer :year_completed
    end
  end

  def down
    drop_table
  end
end
