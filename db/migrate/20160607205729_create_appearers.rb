class CreateAppearers < ActiveRecord::Migration
  def change
    create_table :appearers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :inscription, index: true, foreign_key: true
      t.string :last_name
      t.string :name
      t.string :type_appearer
      t.string :type_representative
      t.string :representative

      t.timestamps null: false
    end
  end
end
