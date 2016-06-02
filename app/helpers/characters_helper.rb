module CharactersHelper

  

  def get_active_level(character)
    active_job = CharacterJob.find_by character_id: character, active: true
    active_job.level
  end

  def job_names
    job_names = []
    Job.all.each do |job|
      job_names << job.name
    end
    job_names
  end

end
