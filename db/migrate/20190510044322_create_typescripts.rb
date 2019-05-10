class CreateTypescripts < ActiveRecord::Migration[5.2]
  def change
    create_table :typescripts do |t|

      t.timestamps
    end
  end
end
