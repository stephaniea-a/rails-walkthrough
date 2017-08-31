class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :job
      t.string :voice_actor
      t.date :first_appearance
    end
  end
end
