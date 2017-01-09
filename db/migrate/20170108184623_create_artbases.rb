class CreateArtbases < ActiveRecord::Migration
  def change
    create_table :artbases do |t|

      t.timestamps
    end
  end
end
