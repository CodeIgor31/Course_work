class DisciplinesController < ApplicationController
  def index
    sql = "select * from disciplines order by id desc"
    @disciplines = ActiveRecord::Base.connection.exec_query(sql)
  end

  def create
  end

  def add
    @discipline = Discipline.create({name: params[:name]})
    redirect_to '/disciplines'
  end

  def edit
    @discipline = Discipline.find_by(id: params[:id])
  end

  def update
    @discipline = Discipline.find_by(id: params[:id])
    @discipline.update({ name: params[:name]})
    redirect_to '/disciplines'
  end


  def destroy
    @discipline = Discipline.find_by(id: params[:id])
    @discipline.destroy
    redirect_to '/disciplines'
  end
end
