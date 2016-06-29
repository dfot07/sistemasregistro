class CreateProhibitions < ActiveRecord::Migration
  def change
    create_table :prohibitions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :last_name
      t.string :name
      t.string :type_prohibition
      t.string :inscription
      t.string :date_inscription

      t.timestamps null: false
    end
  end
end
