class PicklesController < ApplicationController
  before_action :set_pickle, only: [:show, :edit, :update, :destroy]

  # GET /pickles
  # GET /pickles.json
  def index
    @pickles = Pickle.all
  end

  # GET /pickles/1
  # GET /pickles/1.json
  def show
  end

  # GET /pickles/new
  def new
    @pickle = Pickle.new
  end

  # GET /pickles/1/edit
  def edit
  end

  # POST /pickles
  # POST /pickles.json
  def create
    @pickle = Pickle.new(pickle_params)

    respond_to do |format|
      if @pickle.save
        format.html { redirect_to @pickle, notice: 'Pickle was successfully created.' }
        format.json { render :show, status: :created, location: @pickle }
      else
        format.html { render :new }
        format.json { render json: @pickle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickles/1
  # PATCH/PUT /pickles/1.json
  def update
    respond_to do |format|
      if @pickle.update(pickle_params)
        format.html { redirect_to @pickle, notice: 'Pickle was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickle }
      else
        format.html { render :edit }
        format.json { render json: @pickle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickles/1
  # DELETE /pickles/1.json
  def destroy
    @pickle.destroy
    respond_to do |format|
      format.html { redirect_to pickles_url, notice: 'Pickle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickle
      @pickle = Pickle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickle_params
      params.require(:pickle).permit(:category, :message)
    end
end
