class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.belongs_to :Product , foreign_key: true
      t.string :Rank
      t.string :Comment
      t.integer :Rate
      t.datetime :FeadbackDay
    end
  end
end
