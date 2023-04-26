class TeachersController < ApplicationController
  def index
    sql = "select * from teachers order by id desc"
    @teachers = ActiveRecord::Base.connection.exec_query(sql)
  end

  def create
  end

  def add
    @person = Person.create({first_name: params[:first_name], second_name: params[:second_name], patronymic: params[:patronymic], role_id: 'Преподаватель'})
    @teacher = Teacher.create(person_id: @person.id)
    flash[:notice] = 'Успех'
    redirect_to '/teachers'
  end

  def edit
    @teacher = Teacher.find_by(id: params[:id])
    @person = Person.find_by(id: @teacher.person_id)
  end

  def update
    @person = Person.find_by(id: params[:id])
    @person.update({first_name: params[:first_name], second_name: params[:second_name], patronymic: params[:patronymic], role_id: 'Преподаватель'})
    redirect_to '/teachers'
  end


  def destroy
    @teacher = Teacher.find_by(id: params[:id])
    @person = Person.find_by(id: @teacher.person_id)
    @teacher.destroy
    @person.destroy
    redirect_to '/teachers'
  end

end
