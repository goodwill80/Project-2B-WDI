class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :country
      t.string  :place
      t.text    :description
      t.string  :subject
      t.timestamps
    end
  end
end
