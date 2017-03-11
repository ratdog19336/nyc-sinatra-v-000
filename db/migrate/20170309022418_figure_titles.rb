class FigureTitles < ActiveRecord::Migration
  def change
    create_table :figure_titles do |t|
      t.references :title, foreign_key: true
      t.references :figure, foreign_key: true
    end
  end

  def down
    drop_table
  end
end
