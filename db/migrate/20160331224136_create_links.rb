class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title, null: false
      t.string :URL, null: false
    end
  end
end
