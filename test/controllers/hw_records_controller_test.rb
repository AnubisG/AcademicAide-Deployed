require 'test_helper'

class HwRecordsControllerTest < ActionController::TestCase
  setup do
    @hw_record = hw_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hw_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hw_record" do
    assert_difference('HwRecord.count') do
      post :create, hw_record: { class_id: @hw_record.class_id, completeness: @hw_record.completeness, grade: @hw_record.grade, grader_comments: @hw_record.grader_comments, questions: @hw_record.questions, student_answers: @hw_record.student_answers, students_name: @hw_record.students_name, worksheet: @hw_record.worksheet }
    end

    assert_redirected_to hw_record_path(assigns(:hw_record))
  end

  test "should show hw_record" do
    get :show, id: @hw_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hw_record
    assert_response :success
  end

  test "should update hw_record" do
    patch :update, id: @hw_record, hw_record: { class_id: @hw_record.class_id, completeness: @hw_record.completeness, grade: @hw_record.grade, grader_comments: @hw_record.grader_comments, questions: @hw_record.questions, student_answers: @hw_record.student_answers, students_name: @hw_record.students_name, worksheet: @hw_record.worksheet }
    assert_redirected_to hw_record_path(assigns(:hw_record))
  end

  test "should destroy hw_record" do
    assert_difference('HwRecord.count', -1) do
      delete :destroy, id: @hw_record
    end

    assert_redirected_to hw_records_path
  end
end
