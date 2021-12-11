class LabsController < SidebarPagesController
  def index
    lab = Lab.first
    redirect_to lab_url(lab) if lab
  end

  def show
    @lab = Lab.find_by_id(params[:id])
    @content = lab_content(@lab.content_path)
    puts @content
    return not_found if @content.nil?
  end

  def lab_content(content_name)
    views = File.join('app', 'views')
    labs_folder = 'lab_views'
    filename = File.join(Rails.root, views, labs_folder, "_#{content_name}.html.erb")
    return nil unless File.exist?(filename)
    File.join(labs_folder, content_name)
  end

end
