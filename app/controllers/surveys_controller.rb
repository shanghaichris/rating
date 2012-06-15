class SurveysController < ApplicationController
  layout 'application'
  respond_to :html,:js,:json
  
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
    respond_with @survey
  end
  
  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      redirect_to new_survey_question_path(@survey)
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def show
    @survey = Survey.find(params[:id])
  end
  
  def update
    @survey = Survey.find(params[:id])
  end
  
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
  end
end
