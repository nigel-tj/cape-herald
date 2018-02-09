class LocalFeaturesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :test,:show]
  layout "admin", only: [:new, :create, :update, :admin_index]   
  
  def index
    @features = LocalFeature.order('created_at DESC')
  end
  
  def admin_index
    @features = LocalFeature.order('created_at DESC')
  end
  
  def new
    @local_feature = LocalFeature.new
  end
  
  def create
    @feature = LocalFeature.new(local_feature_params)
    if @feature.save
      flash[:notice] = "Successfully created gallery."
      redirect_to "/admin_index"
    else
      render :action => 'new'
    end
  end

  def show
    @feature = LocalFeature.find(params[:id])
  end
  
  private
  def feature_params
    params.require(:local_feature).permit(:link,:image,:intro,:heading,:body, :track, :video)
  end

end
