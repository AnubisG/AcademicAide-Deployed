class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :author
      t.integer :suggested_grade
      t.boolean :arithmetic
      t.boolean :addition
      t.boolean :subtraction
      t.boolean :multiplication
      t.boolean :division
      t.boolean :long_division
      t.boolean :reading
      t.boolean :trick_question
      t.boolean :multiple_choices
      t.string :multiple_choice_answer
      t.boolean :word_problem
      t.text :word_problem_solution_equation
      t.boolean :integer
      t.boolean :decimal
      t.integer :number_of_decimals
      t.boolean :fraction
      t.boolean :fraction_to_decimal
      t.boolean :decimal_to_fraction
      t.integer :significant_digits
      t.boolean :scientific_notation
      t.boolean :parenthesis
      t.boolean :exponent
      t.boolean :roots
      t.boolean :square_root
      t.boolean :cube_root
      t.boolean :factoring
      t.boolean :foil
      t.boolean :variables
      t.integer :number_of_variables
      t.boolean :imaginary_number
      t.boolean :degree
      t.boolean :radian
      t.boolean :trigonometry
      t.boolean :sin
      t.boolean :cos
      t.boolean :tan
      t.boolean :csc
      t.boolean :sec
      t.boolean :cot
      t.boolean :arcsin
      t.boolean :arccos
      t.boolean :arctan
      t.boolean :arccsc
      t.boolean :arcsec
      t.boolean :arccot
      t.boolean :simple_shapes_area
      t.boolean :simple_shapes_circumference
      t.boolean :simple_shapes_volume
      t.boolean :combination_shapes_area
      t.boolean :combination_shapes_circumference
      t.boolean :combination_shapes_volume
      t.boolean :ratios
      t.boolean :functions
      t.boolean :equation
      t.boolean :inequality
      t.boolean :plotting
      t.boolean :graph
      t.boolean :slope
      t.string :upper_bound
      t.string :lower_bound
      t.string :specialized
      t.text :short_description
      t.text :the_question
      t.text :answer

      t.timestamps null: false
    end
  end
end
