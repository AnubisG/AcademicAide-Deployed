class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  respond_to :html


  # GET /questions
  # GET /questions.json
  def index
    #@questions = Question.all
    @questions = Question.paginate(:per_page => 5, :page => params[:page]) 
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @questions = Question.all
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  def my
    @question = Question.all
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:author, :suggested_grade, :arithmetic, :addition, :subtraction, :multiplication, :division, :long_division, :reading, :trick_question, :multiple_choices, :multiple_choice_answer, :word_problem, :word_problem_solution_equation, :integer, :decimal, :number_of_decimals, :fraction, :fraction_to_decimal, :decimal_to_fraction, :significant_digits, :scientific_notation, :parenthesis, :exponent, :roots, :square_root, :cube_root, :factoring, :foil, :variables, :number_of_variables, :imaginary_number, :degree, :radian, :trigonometry, :sin, :cos, :tan, :csc, :sec, :cot, :arcsin, :arccos, :arctan, :arccsc, :arcsec, :arccot, :simple_shapes_area, :simple_shapes_circumference, :simple_shapes_volume, :combination_shapes_area, :combination_shapes_circumference, :combination_shapes_volume, :ratios, :functions, :equation, :inequality, :plotting, :graph, :slope, :upper_bound, :lower_bound, :specialized, :short_description, :the_question, :answer)
    end
end
