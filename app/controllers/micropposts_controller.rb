class MicroppostsController < ApplicationController
  before_action :set_microppost, only: [:show, :edit, :update, :destroy]

  # GET /micropposts
  # GET /micropposts.json
  def index
    @micropposts = Microppost.all
  end

  # GET /micropposts/1
  # GET /micropposts/1.json
  def show
  end

  # GET /micropposts/new
  def new
    @microppost = Microppost.new
  end

  # GET /micropposts/1/edit
  def edit
  end

  # POST /micropposts
  # POST /micropposts.json
  def create
    @microppost = Microppost.new(microppost_params)

    respond_to do |format|
      if @microppost.save
        format.html { redirect_to @microppost, notice: 'Microppost was successfully created.' }
        format.json { render :show, status: :created, location: @microppost }
      else
        format.html { render :new }
        format.json { render json: @microppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropposts/1
  # PATCH/PUT /micropposts/1.json
  def update
    respond_to do |format|
      if @microppost.update(microppost_params)
        format.html { redirect_to @microppost, notice: 'Microppost was successfully updated.' }
        format.json { render :show, status: :ok, location: @microppost }
      else
        format.html { render :edit }
        format.json { render json: @microppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropposts/1
  # DELETE /micropposts/1.json
  def destroy
    @microppost.destroy
    respond_to do |format|
      format.html { redirect_to micropposts_url, notice: 'Microppost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microppost
      @microppost = Microppost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microppost_params
      params.require(:microppost).permit(:content, :user_id)
    end
end
