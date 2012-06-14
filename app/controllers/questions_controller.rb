class QuestionsController < ApplicationController
  before_filter :get_survey
  respond_to :html,:js
  
  def index
    @questions = @survey.questions
    respond_with @questions
  end

  def show
  end

  def new
    @questions = @survey.build
    respond_with @questions
  end

  def edit
  end
  
  private
  def get_survey
    @survey = Survey.find(params[:survey_id])
  end
end
