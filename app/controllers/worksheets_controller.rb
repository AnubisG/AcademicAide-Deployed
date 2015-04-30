class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @worksheets = Worksheet.all
    respond_with(@worksheets)
  end

  def show
    respond_with(@worksheet)
  end

  def new
    @worksheet = Worksheet.new
    respond_with(@worksheet)
  end

  def edit
  end

  def create
    @worksheet = Worksheet.new(worksheet_params)
    @worksheet.save
    respond_with(@worksheet)
  end

  def update
    @worksheet.update(worksheet_params)
    respond_with(@worksheet)
  end

  def destroy
    @worksheet.destroy
    respond_with(@worksheet)
  end

  private
    def set_worksheet
      @worksheet = Worksheet.find(params[:id])
    end

    def worksheet_params
      params.require(:worksheet).permit(:author, :description, :worksheet_name, :suggested_grade, :arithmetic, :addition, :subtraction, :multiplication, :division, :long_division, :reading, :trick_question, :multiple_choices, :multiple_choice_answer, :word_problem, :word_problem_solution_equation, :integer, :decimal, :number_of_decimals, :fraction, :fraction_to_decimal, :decimal_to_fraction, :significant_digits, :scientific_notation, :parenthesis, :exponent, :roots, :square_root, :cube_root, :factoring, :foil, :variables, :number_of_variables, :imaginary_number, :degree, :radian, :trigonometry, :sin, :cos, :tan, :csc, :sec, :cot, :arcsin, :arccos, :arctan, :arccsc, :arcsec, :arccot, :simple_shapes_area, :simple_shapes_circumference, :simple_shapes_volume, :combination_shapes_area, :combination_shapes_circumference, :combination_shapes_volume, :ratios, :functions, :equation, :inequality, :plotting, :graph, :slope, :upper_bound, :lower_bound, :questions, :answers)
    end
end
