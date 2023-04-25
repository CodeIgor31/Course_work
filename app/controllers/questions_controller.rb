class QuestionsController < ApplicationController
  def index
    sql = "select * from questions limit 500"
    dis_sql = "select * from disciplines"
    @questions = ActiveRecord::Base.connection.exec_query(sql)
    @disciplines = ActiveRecord::Base.connection.exec_query(dis_sql)
  end
end
