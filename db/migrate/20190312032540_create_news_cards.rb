class CreateNewsCards < ActiveRecord::Migration[5.2]
  def change
    create_table :news_cards do |t|

      t.timestamps
    end
  end
end
