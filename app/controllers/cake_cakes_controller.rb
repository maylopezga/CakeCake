class CakeCakesController < ApplicationController
  before_action :set_cake_cake, only: [:show, :edit, :update, :destroy]

  # GET /cake_cakes
  # GET /cake_cakes.json
  def index
    @cake_cakes = CakeCake.all
  end

  # GET /cake_cakes/1
  # GET /cake_cakes/1.json
  def show
  end

  # GET /cake_cakes/new
  def new
    @cake_cake = CakeCake.new
  end

  # GET /cake_cakes/1/edit
  def edit
  end

  # POST /cake_cakes
  # POST /cake_cakes.json
  def create
    @cake_cake = CakeCake.new(cake_cake_params)

    respond_to do |format|
      if @cake_cake.save
        format.html { redirect_to @cake_cake, notice: 'Cake cake was successfully created.' }
        format.json { render :show, status: :created, location: @cake_cake }
      else
        format.html { render :new }
        format.json { render json: @cake_cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_cakes/1
  # PATCH/PUT /cake_cakes/1.json
  def update
    respond_to do |format|
      if @cake_cake.update(cake_cake_params)
        format.html { redirect_to @cake_cake, notice: 'Cake cake was successfully updated.' }
        format.json { render :show, status: :ok, location: @cake_cake }
      else
        format.html { render :edit }
        format.json { render json: @cake_cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_cakes/1
  # DELETE /cake_cakes/1.json
  def destroy
    @cake_cake.destroy
    respond_to do |format|
      format.html { redirect_to cake_cakes_url, notice: 'Cake cake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_cake
      @cake_cake = CakeCake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cake_cake_params
      params.require(:cake_cake).permit(:name, :ingredients)
    end
end
