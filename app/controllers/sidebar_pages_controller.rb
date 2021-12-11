class SidebarPagesController < ApplicationController
  layout 'sidebar_layout'

  before_action :set_sidebar_content

  protected

  def set_sidebar_content
    @sidebar_groups = Group.all.order(:created_at)
    @sidebar_labs = Lab.all.order(:created_at)
  end
end
