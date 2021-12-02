class ApplicationController < ActionController::Base
  # labs are used in application layout
  def initialize
    super
    @labs = Lab.all
  end
end
