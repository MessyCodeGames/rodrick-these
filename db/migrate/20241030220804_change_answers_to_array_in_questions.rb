class ChangeAnswersToArrayInQuestions < ActiveRecord::Migration[7.1]
  def change
    execute <<-SQL
      ALTER TABLE questions
      ALTER COLUMN answers
      SET DATA TYPE text[]
      USING string_to_array(answers, ',');
    SQL

  change_column_default :questions, :answers, []
  end
end
