class StudentsController < ApplicationController
  def index
    sql = "select * from students order by id desc limit 50"
    @students = ActiveRecord::Base.connection.exec_query(sql)
  end
  def new
  end

  def create
    @pers = Person.new({first_name: params[:first_name], second_name: params[:second_name], patronymic: params[:patronymic], role_id: 'Студент'})
    return unless @pers.save
    flash[:notice] = 'Успех'
    @pers = Person.last
    @student = Student.new({person_id: @pers.id, quota: params[:quota], date_of_entering: params[:date_of_entering]})
    return unless @student.save
    flash[:notice] = 'Успех'
    redirect_to students_path
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update({ quota: params[:quota], date_of_entering: params[:date_of_entering], date_of_otchislenie: params[:date_of_otchislenie] })
    redirect_to '/students'
  end

  def destroy
    @st = Student.find_by(id: params[:id])
    @sec = Person.find_by(id: @st.person_id)
    @st.destroy
    @sec.destroy
    redirect_to '/students'
  end
end
