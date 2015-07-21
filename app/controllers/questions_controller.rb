class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.published
    @question  = Question.new
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_path, notice: 'Ваш вопрос получен!'
    else
      redirect_to questions_path, error: 'Корректно заполните все поля'
    end
  end


  private
    def question_params
      params.require(:question).permit :author, :text, :email
    end
end
