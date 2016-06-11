class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :num_inscription
      t.string :act
      t.string :date_inscription

      t.timestamps null: false
    end
  end
end
