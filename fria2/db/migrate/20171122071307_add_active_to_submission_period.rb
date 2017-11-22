class AddActiveToSubmissionPeriod < ActiveRecord::Migration[5.1]
  def change
    add_column :submission_periods, :is_active, :boolean
  end
end
