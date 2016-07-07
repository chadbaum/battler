class CreateCharactersAndParties < ActiveRecord::Migration[5.0]
  def change
    create_table :characters_parties, id: false do |t|
      t.belongs_to :character, index: true
      t.belongs_to :party, index: true
    end
  end
end
