class CreateRepertories < ActiveRecord::Migration
  def change
    create_table :repertories do |t|
      t.references :user, index: true, foreign_key: true
      t.string :num_repertory
      t.string :last_name
      t.string :name
      t.string :document
      t.string :inscription
      t.time :time_repertory
      t.date :date_repertory
      t.string :register
      t.string :num_inscription

      t.timestamps null: false
    end
  end
end
