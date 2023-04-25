class DisciplinesController < ApplicationController
  def index
    sql = "select * from disciplines"
    @disciplines = ActiveRecord::Base.connection.exec_query(sql)
  end
end
