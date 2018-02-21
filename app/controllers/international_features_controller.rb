class InternationalFeaturesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :test,:show]
  layout "admin", only: [:new, :create, :update, :admin_index]   
  
  def index
    @features = InternationalFeature.order('created_at DESC')
  end
  
  def admin_index
    @features = InternationalFeature.order('created_at DESC')
  end
  
  def new
    @international_feature = InternationalFeature.new
  end
  
  def create
    @international_feature = InternationalFeature.new(feature_params)
    if @international_feature.save
      flash[:notice] = "Successfully created gallery."
      redirect_to "/international_features_index"
    else
      render :action => 'new'
    end
  end

  def show
    @feature = InternationalFeature.find(params[:id])
  end
  
  private
  def feature_params
    params.require(:international_feature).permit(:link,:image,:intro,:heading,:body, :track, :video)
  end

end
