class Frames < ActiveRecord::Migration[6.1]
    def change
      create_table :frames do |t|
        t.string :make
        t.string :pic
      end
    end
end
