class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout "tutorial"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all
  # GET /tutorials
  # GET /tutorials.json
  def index
    @tutorials = Tutorial.page(params[:page]).per(5)
    @page_title = "My Portfolio Tutorials"
  end

  # GET /tutorials/1
  # GET /tutorials/1.json
  def show
    @page_title = @tutorial.title
    @seo_keywords = @tutorial.body
  end

  # GET /tutorials/new
  def new
    @tutorial = Tutorial.new
  end

  # GET /tutorials/1/edit
  def edit
  end

  # POST /tutorials
  # POST /tutorials.json
  def create
    @tutorial = Tutorial.new(tutorial_params)

    respond_to do |format|
      if @tutorial.save
        format.html { redirect_to @tutorial, notice: 'Your Tutorial post was successfully created and is now live...' }
        format.json { render :show, status: :created, location: @tutorial }
      else
        format.html { render :new }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorials/1
  # PATCH/PUT /tutorials/1.json
  def update
    respond_to do |format|
      if @tutorial.update(tutorial_params)
        format.html { redirect_to @tutorial, notice: 'Your Tutorial post was successfully updated and is now live...' }
        format.json { render :show, status: :ok, location: @tutorial }
      else
        format.html { render :edit }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorials/1
  # DELETE /tutorials/1.json
  def destroy
    @tutorial.destroy
    respond_to do |format|
      format.html { redirect_to tutorials_url, notice: 'Your Tutorial post was successfully deleted and is now permanently offline...' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @tutorial.draft?
      @tutorial.published!
    elsif @tutorial.published?
      @tutorial.draft!
    end
        
    redirect_to tutorials_url, notice: 'Your post status has been updated successfully...'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial
      @tutorial = Tutorial.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutorial_params
      params.require(:tutorial).permit(:title, :body)
    end
  end
