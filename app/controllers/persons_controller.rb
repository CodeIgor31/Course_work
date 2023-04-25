class PersonsController < ApplicationController
  def index
    sql = "select * from persons limit 5000"
    @persons = ActiveRecord::Base.connection.exec_query(sql)
  end
end
