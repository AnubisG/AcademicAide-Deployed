json.array!(@hw_records) do |hw_record|
  json.extract! hw_record, :id, :worksheet, :questions, :student_answers, :students_name, :completeness, :grade, :grader_comments, :class_id
  json.url hw_record_url(hw_record, format: :json)
end
