class TeachersDisciplinesController < ApplicationController
  def index
    sql = "select * from teachers_disciplines order by id desc limit 5"
    @teach_disc = ActiveRecord::Base.connection.exec_query(sql)
  end

  def create
  end

  def add
    # @pers = Person.new({first_name: params[:first_name], second_name: params[:second_name], patronymic: params[:patronymic], role_id: 'Преподаватель'})
    # return unless @pers.save
    # @pers = Person.last
    # disc = params[:discipline_id]
    # disc[1..].each do |note|
    #   @teacher = Teacher.create({person_id: @pers.id})
    #   @tdis = TeacherDiscipline.new({teacher_id: @teacher.id, discipline_id: note.to_i, status: true})
    #   return unless @teacher.save
    #   return unless @tdis.save
    # end
    # flash[:notice] = 'Успех'
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @tdis = TeacherDiscipline.create({teacher_id: @teacher.id, discipline_id: params[:discipline_id], status: true})
    redirect_to tdis_path
  end

  def edit
    @tdis = TeacherDiscipline.find_by(id: params[:id])
  end

  def update
    @tdis = TeacherDiscipline.find_by(id: params[:id])
    @tdis.update({ teacher_id: params[:teacher_id], discipline_id: params[:discipline_id], status: params[:status] })
    redirect_to '/teachers_disciplines'
  end


  def destroy
    @tdis = TeacherDiscipline.find_by(id: params[:id])
    @teacher = Teacher.find_by(id: @tdis.teacher_id)
    @person = Person.find_by(id: @teacher.person_id)
    @tdis.destroy
    redirect_to tdis_path
  end
end
