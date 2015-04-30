json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :author, :course_description, :syllabus, :worksheets
  json.url curriculum_url(curriculum, format: :json)
end
