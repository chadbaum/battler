# frozen_string_literal: true
# Character
module CharactersHelper
  def job_names
    job_names = []
    Job.all.each do |job|
      job_names << job.name
    end
    job_names
  end
end
