class CourseController < ApplicationController
  def index
    @groups = Group.all
    #@labs = Lab.all
  end
end
