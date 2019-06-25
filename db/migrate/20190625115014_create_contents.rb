class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :url
      t.text :h1
      t.text :h2
      t.text :h3
      t.text :links

      t.timestamps
    end
  end
end
