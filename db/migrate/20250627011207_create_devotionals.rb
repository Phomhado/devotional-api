class CreateDevotionals < ActiveRecord::Migration[7.1]
  def change
    create_table :devotionals do |t|
      t.string :title
      t.string :verse
      t.text :body
      t.date :date

      t.timestamps
    end
  end
end
