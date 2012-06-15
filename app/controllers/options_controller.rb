class OptionsController < ApplicationController
  before_filter :get_question
  respond_to :html,:js
  
  def index
    @options = @question.all
    respond_with @options
  end
  
  def new
    @option = @question.options.build
    respond_with @option
  end
  
  def destroy
    @option = @question.options.find(params[:id])
    if @option.destroy
      respond_with @option
    end
  end
  
  def create
    @option = @question.options.build(params[:option])
    respond_with @option if @option.save
    
  end
  
  private
  def get_question
    @question = Question.find(params[:question_id])
  end
  
end
