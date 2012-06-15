class QuestionsController < ApplicationController
  before_filter :get_survey
  respond_to :html,:js
  
  def index
    @questions = @survey.questions
    respond_with @questions
  end

  def show
    @question = @survey.questions.find(params[:id])
    respond_with @question
  end

  def new
    @question = @survey.questions.build
    respond_with @question
  end
  
  def create
    @question = @survey.questions.build(params[:question])
    if @question.save
      redirect_to survey_question_path(@survey,@question)
    end
  end

  def edit
    @question = @survey.questions.find(params[:id])
    respond_with @question
  end
  
  def update
    @question = @survey.questions.find(params[:id])
    
    redirect_to [@survey,@question] if @question.update_attributes(params[:question])
  end
  
  def destroy
    @question = @survey.questions.find(params[:id])
    respond_with @question if @question.destroy
  end
  
  private
  def get_survey
    @survey = Survey.find(params[:survey_id])
  end
end
