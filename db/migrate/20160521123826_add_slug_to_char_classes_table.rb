class AddSlugToCharClassesTable < ActiveRecord::Migration
  def change
    add_column :char_classes, :slug, :string
    add_index :char_classes, :slug
  end
end
