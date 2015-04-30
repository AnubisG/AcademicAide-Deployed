require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { addition: @question.addition, answer: @question.answer, arccos: @question.arccos, arccot: @question.arccot, arccsc: @question.arccsc, arcsec: @question.arcsec, arcsin: @question.arcsin, arctan: @question.arctan, arithmetic: @question.arithmetic, author: @question.author, combination_shapes_area: @question.combination_shapes_area, combination_shapes_circumference: @question.combination_shapes_circumference, combination_shapes_volume: @question.combination_shapes_volume, cos: @question.cos, cot: @question.cot, csc: @question.csc, cube_root: @question.cube_root, decimal: @question.decimal, decimal_to_fraction: @question.decimal_to_fraction, degree: @question.degree, division: @question.division, equation: @question.equation, exponent: @question.exponent, factoring: @question.factoring, foil: @question.foil, fraction: @question.fraction, fraction_to_decimal: @question.fraction_to_decimal, functions: @question.functions, graph: @question.graph, imaginary_number: @question.imaginary_number, inequality: @question.inequality, integer: @question.integer, long_division: @question.long_division, lower_bound: @question.lower_bound, multiple_choice_answer: @question.multiple_choice_answer, multiple_choices: @question.multiple_choices, multiplication: @question.multiplication, number_of_decimals: @question.number_of_decimals, number_of_variables: @question.number_of_variables, parenthesis: @question.parenthesis, plotting: @question.plotting, radian: @question.radian, ratios: @question.ratios, reading: @question.reading, roots: @question.roots, scientific_notation: @question.scientific_notation, sec: @question.sec, short_description: @question.short_description, significant_digits: @question.significant_digits, simple_shapes_area: @question.simple_shapes_area, simple_shapes_circumference: @question.simple_shapes_circumference, simple_shapes_volume: @question.simple_shapes_volume, sin: @question.sin, slope: @question.slope, specialized: @question.specialized, square_root: @question.square_root, subtraction: @question.subtraction, suggested_grade: @question.suggested_grade, tan: @question.tan, the_question: @question.the_question, trick_question: @question.trick_question, trigonometry: @question.trigonometry, upper_bound: @question.upper_bound, variables: @question.variables, word_problem: @question.word_problem, word_problem_solution_equation: @question.word_problem_solution_equation }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { addition: @question.addition, answer: @question.answer, arccos: @question.arccos, arccot: @question.arccot, arccsc: @question.arccsc, arcsec: @question.arcsec, arcsin: @question.arcsin, arctan: @question.arctan, arithmetic: @question.arithmetic, author: @question.author, combination_shapes_area: @question.combination_shapes_area, combination_shapes_circumference: @question.combination_shapes_circumference, combination_shapes_volume: @question.combination_shapes_volume, cos: @question.cos, cot: @question.cot, csc: @question.csc, cube_root: @question.cube_root, decimal: @question.decimal, decimal_to_fraction: @question.decimal_to_fraction, degree: @question.degree, division: @question.division, equation: @question.equation, exponent: @question.exponent, factoring: @question.factoring, foil: @question.foil, fraction: @question.fraction, fraction_to_decimal: @question.fraction_to_decimal, functions: @question.functions, graph: @question.graph, imaginary_number: @question.imaginary_number, inequality: @question.inequality, integer: @question.integer, long_division: @question.long_division, lower_bound: @question.lower_bound, multiple_choice_answer: @question.multiple_choice_answer, multiple_choices: @question.multiple_choices, multiplication: @question.multiplication, number_of_decimals: @question.number_of_decimals, number_of_variables: @question.number_of_variables, parenthesis: @question.parenthesis, plotting: @question.plotting, radian: @question.radian, ratios: @question.ratios, reading: @question.reading, roots: @question.roots, scientific_notation: @question.scientific_notation, sec: @question.sec, short_description: @question.short_description, significant_digits: @question.significant_digits, simple_shapes_area: @question.simple_shapes_area, simple_shapes_circumference: @question.simple_shapes_circumference, simple_shapes_volume: @question.simple_shapes_volume, sin: @question.sin, slope: @question.slope, specialized: @question.specialized, square_root: @question.square_root, subtraction: @question.subtraction, suggested_grade: @question.suggested_grade, tan: @question.tan, the_question: @question.the_question, trick_question: @question.trick_question, trigonometry: @question.trigonometry, upper_bound: @question.upper_bound, variables: @question.variables, word_problem: @question.word_problem, word_problem_solution_equation: @question.word_problem_solution_equation }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
