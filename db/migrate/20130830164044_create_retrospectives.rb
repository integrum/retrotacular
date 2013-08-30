class CreateRetrospectives < ActiveRecord::Migration
  def change
    create_table :retrospectives do |t|
      t.string :name
      t.text :set_stage
      t.text :gather_data
      t.text :generate_insights
      t.text :decide_what_to_do
      t.text :close

      t.timestamps
    end
    add_index :retrospectives, :name
  end
end
