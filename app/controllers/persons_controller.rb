class PersonsController < ApplicationController
  def index
    sql = "select * from persons order by id desc limit 500"
    @persons = ActiveRecord::Base.connection.exec_query(sql)
  end
end
