class HwRecordsController < ApplicationController
  before_action :set_hw_record, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hw_records = HwRecord.all
    respond_with(@hw_records)
  end

  def show
    respond_with(@hw_record)
  end

  def new
    @hw_record = HwRecord.new
    respond_with(@hw_record)
  end

  def edit
  end

  def create
    @hw_record = HwRecord.new(hw_record_params)
    @hw_record.save
    respond_with(@hw_record)
  end

  def update
    @hw_record.update(hw_record_params)
    respond_with(@hw_record)
  end

  def destroy
    @hw_record.destroy
    respond_with(@hw_record)
  end

  private
    def set_hw_record
      @hw_record = HwRecord.find(params[:id])
    end

    def hw_record_params
      params.require(:hw_record).permit(:worksheet, :questions, :student_answers, :students_name, :completeness, :grade, :grader_comments, :class_id)
    end
end
