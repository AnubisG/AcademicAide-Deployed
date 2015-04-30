require 'test_helper'

class WorksheetsControllerTest < ActionController::TestCase
  setup do
    @worksheet = worksheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worksheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worksheet" do
    assert_difference('Worksheet.count') do
      post :create, worksheet: { addition: @worksheet.addition, answers: @worksheet.answers, arccos: @worksheet.arccos, arccot: @worksheet.arccot, arccsc: @worksheet.arccsc, arcsec: @worksheet.arcsec, arcsin: @worksheet.arcsin, arctan: @worksheet.arctan, arithmetic: @worksheet.arithmetic, author: @worksheet.author, combination_shapes_area: @worksheet.combination_shapes_area, combination_shapes_circumference: @worksheet.combination_shapes_circumference, combination_shapes_volume: @worksheet.combination_shapes_volume, cos: @worksheet.cos, cot: @worksheet.cot, csc: @worksheet.csc, cube_root: @worksheet.cube_root, decimal: @worksheet.decimal, decimal_to_fraction: @worksheet.decimal_to_fraction, degree: @worksheet.degree, description: @worksheet.description, division: @worksheet.division, equation: @worksheet.equation, exponent: @worksheet.exponent, factoring: @worksheet.factoring, foil: @worksheet.foil, fraction: @worksheet.fraction, fraction_to_decimal: @worksheet.fraction_to_decimal, functions: @worksheet.functions, graph: @worksheet.graph, imaginary_number: @worksheet.imaginary_number, inequality: @worksheet.inequality, integer: @worksheet.integer, long_division: @worksheet.long_division, lower_bound: @worksheet.lower_bound, multiple_choice_answer: @worksheet.multiple_choice_answer, multiple_choices: @worksheet.multiple_choices, multiplication: @worksheet.multiplication, number_of_decimals: @worksheet.number_of_decimals, number_of_variables: @worksheet.number_of_variables, parenthesis: @worksheet.parenthesis, plotting: @worksheet.plotting, questions: @worksheet.questions, radian: @worksheet.radian, ratios: @worksheet.ratios, reading: @worksheet.reading, roots: @worksheet.roots, scientific_notation: @worksheet.scientific_notation, sec: @worksheet.sec, significant_digits: @worksheet.significant_digits, simple_shapes_area: @worksheet.simple_shapes_area, simple_shapes_circumference: @worksheet.simple_shapes_circumference, simple_shapes_volume: @worksheet.simple_shapes_volume, sin: @worksheet.sin, slope: @worksheet.slope, square_root: @worksheet.square_root, subtraction: @worksheet.subtraction, suggested_grade: @worksheet.suggested_grade, tan: @worksheet.tan, trick_question: @worksheet.trick_question, trigonometry: @worksheet.trigonometry, upper_bound: @worksheet.upper_bound, variables: @worksheet.variables, word_problem: @worksheet.word_problem, word_problem_solution_equation: @worksheet.word_problem_solution_equation, worksheet_name: @worksheet.worksheet_name }
    end

    assert_redirected_to worksheet_path(assigns(:worksheet))
  end

  test "should show worksheet" do
    get :show, id: @worksheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worksheet
    assert_response :success
  end

  test "should update worksheet" do
    patch :update, id: @worksheet, worksheet: { addition: @worksheet.addition, answers: @worksheet.answers, arccos: @worksheet.arccos, arccot: @worksheet.arccot, arccsc: @worksheet.arccsc, arcsec: @worksheet.arcsec, arcsin: @worksheet.arcsin, arctan: @worksheet.arctan, arithmetic: @worksheet.arithmetic, author: @worksheet.author, combination_shapes_area: @worksheet.combination_shapes_area, combination_shapes_circumference: @worksheet.combination_shapes_circumference, combination_shapes_volume: @worksheet.combination_shapes_volume, cos: @worksheet.cos, cot: @worksheet.cot, csc: @worksheet.csc, cube_root: @worksheet.cube_root, decimal: @worksheet.decimal, decimal_to_fraction: @worksheet.decimal_to_fraction, degree: @worksheet.degree, description: @worksheet.description, division: @worksheet.division, equation: @worksheet.equation, exponent: @worksheet.exponent, factoring: @worksheet.factoring, foil: @worksheet.foil, fraction: @worksheet.fraction, fraction_to_decimal: @worksheet.fraction_to_decimal, functions: @worksheet.functions, graph: @worksheet.graph, imaginary_number: @worksheet.imaginary_number, inequality: @worksheet.inequality, integer: @worksheet.integer, long_division: @worksheet.long_division, lower_bound: @worksheet.lower_bound, multiple_choice_answer: @worksheet.multiple_choice_answer, multiple_choices: @worksheet.multiple_choices, multiplication: @worksheet.multiplication, number_of_decimals: @worksheet.number_of_decimals, number_of_variables: @worksheet.number_of_variables, parenthesis: @worksheet.parenthesis, plotting: @worksheet.plotting, questions: @worksheet.questions, radian: @worksheet.radian, ratios: @worksheet.ratios, reading: @worksheet.reading, roots: @worksheet.roots, scientific_notation: @worksheet.scientific_notation, sec: @worksheet.sec, significant_digits: @worksheet.significant_digits, simple_shapes_area: @worksheet.simple_shapes_area, simple_shapes_circumference: @worksheet.simple_shapes_circumference, simple_shapes_volume: @worksheet.simple_shapes_volume, sin: @worksheet.sin, slope: @worksheet.slope, square_root: @worksheet.square_root, subtraction: @worksheet.subtraction, suggested_grade: @worksheet.suggested_grade, tan: @worksheet.tan, trick_question: @worksheet.trick_question, trigonometry: @worksheet.trigonometry, upper_bound: @worksheet.upper_bound, variables: @worksheet.variables, word_problem: @worksheet.word_problem, word_problem_solution_equation: @worksheet.word_problem_solution_equation, worksheet_name: @worksheet.worksheet_name }
    assert_redirected_to worksheet_path(assigns(:worksheet))
  end

  test "should destroy worksheet" do
    assert_difference('Worksheet.count', -1) do
      delete :destroy, id: @worksheet
    end

    assert_redirected_to worksheets_path
  end
end
