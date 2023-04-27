class QuestionsController < ApplicationController
  def index
    sql = "select * from questions order by id desc limit 500"
    dis_sql = "select * from disciplines"
    @questions = ActiveRecord::Base.connection.exec_query(sql)
    @disciplines = ActiveRecord::Base.connection.exec_query(dis_sql)
  end

  def create
  end

  def add
    @question = Question.create({question: params[:question], part: params[:part], answer: params[:answer], mark: params[:mark], discipline_id: params[:discipline_id]})
    redirect_to '/questions'
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.update({question: params[:question], part: params[:part], answer: params[:answer], mark: params[:mark], discipline_id: params[:discipline_id]})
    redirect_to '/questions'
  end


  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy
    redirect_to '/questions'
  end

end
