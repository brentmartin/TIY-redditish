class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :link, index: true, foreign_key: true
    end
  end
end
