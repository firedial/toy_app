class MicoropostsController < ApplicationController
  before_action :set_micoropost, only: [:show, :edit, :update, :destroy]

  # GET /micoroposts
  # GET /micoroposts.json
  def index
    @micoroposts = Micoropost.all
  end

  # GET /micoroposts/1
  # GET /micoroposts/1.json
  def show
  end

  # GET /micoroposts/new
  def new
    @micoropost = Micoropost.new
  end

  # GET /micoroposts/1/edit
  def edit
  end

  # POST /micoroposts
  # POST /micoroposts.json
  def create
    @micoropost = Micoropost.new(micoropost_params)

    respond_to do |format|
      if @micoropost.save
        format.html { redirect_to @micoropost, notice: 'Micoropost was successfully created.' }
        format.json { render :show, status: :created, location: @micoropost }
      else
        format.html { render :new }
        format.json { render json: @micoropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micoroposts/1
  # PATCH/PUT /micoroposts/1.json
  def update
    respond_to do |format|
      if @micoropost.update(micoropost_params)
        format.html { redirect_to @micoropost, notice: 'Micoropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micoropost }
      else
        format.html { render :edit }
        format.json { render json: @micoropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micoroposts/1
  # DELETE /micoroposts/1.json
  def destroy
    @micoropost.destroy
    respond_to do |format|
      format.html { redirect_to micoroposts_url, notice: 'Micoropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micoropost
      @micoropost = Micoropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micoropost_params
      params.require(:micoropost).permit(:content, :user_id)
    end
end
