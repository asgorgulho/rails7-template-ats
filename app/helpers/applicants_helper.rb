module ApplicantsHelper
  def applicant_sort_options_for_select
    [
      ['Application Date Ascending', 'created_at-asc'],
      ['Application Date Descending', 'created_at-desc']
    ]
  end

  def job_options_for_select(account_id)
    Job.where(account_id: account_id).order(:title).pluck(:title, :id)
  end
end
