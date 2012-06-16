class PapersController < ApplicationController
  before_filter :get_survey,except: :survey_select
  respond_to :html,:js
  
  def survey_select
    @surveys = Survey.all
    respond_with @surveys
  end
  
  def index
    @papers = @survey.papers
    respond_with @papers
  end

  def show
  end

  def new
    @paper = @survey.papers.build
    respond_with @papers
  end
  
  def create
    @paper = @survey.papers.build(params[:paper])
    redirect_to :index if @paper.save
  end
  
  private
  def get_survey
    @survey = Survey.find(params[:survey_id])
  end
  
end
