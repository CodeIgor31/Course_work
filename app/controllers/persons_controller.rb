class PersonsController < ApplicationController
  def index
    sql = "select * from persons order by id desc limit 500"
    @persons = ActiveRecord::Base.connection.exec_query(sql)
  end

  def edit
    @person = Person.find_by(id: params[:id])
  end

  def update
    @person = Person.find_by(id: params[:id])
    @person.update({role_id: params[:role_id]})
    redirect_to '/persons'
  end

end
