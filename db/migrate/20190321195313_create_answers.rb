class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer_description
      t.string :author
      t.integer :answer_chosen

      t.timestamps
    end
  end
end
