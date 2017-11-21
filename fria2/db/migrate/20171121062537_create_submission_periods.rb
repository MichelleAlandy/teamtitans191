class CreateSubmissionPeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :submission_periods do |t|
      t.integer :proposal_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
