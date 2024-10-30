class ChangeAnswersToTextInQuestions < ActiveRecord::Migration[7.1]
  def change
    change_column :questions, :answers, :text
  end
end
