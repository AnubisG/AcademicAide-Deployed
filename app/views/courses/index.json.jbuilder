json.array!(@courses) do |course|
  json.extract! course, :id, :class_id, :teacher, :students, :course_name, :class_description, :corresponding_course
  json.url course_url(course, format: :json)
end
