class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
    end
  end

  def down
    drop_table
  end
end
