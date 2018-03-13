class KarinasController < ApplicationController
  before_action :set_karina, only: [:show, :edit, :update, :destroy]

  # GET /karinas
  # GET /karinas.json
  def index
end

  # GET /karinas/1
  # GET /karinas/1.json
  def show
  end

  # GET /karinas/new
  def new
    @karina = Karina.new
  end

  # GET /karinas/1/edit
  def edit
  end

  # POST /karinas
  # POST /karinas.json
  def create
    @karina = Karina.new(karina_params)

    respond_to do |format|
      if @karina.save
        format.html { redirect_to @karina, notice: 'Karina was successfully created.' }
        format.json { render :show, status: :created, location: @karina }
      else
        format.html { render :new }
        format.json { render json: @karina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karinas/1
  # PATCH/PUT /karinas/1.json
  def update
    respond_to do |format|
      if @karina.update(karina_params)
        format.html { redirect_to @karina, notice: 'Karina was successfully updated.' }
        format.json { render :show, status: :ok, location: @karina }
      else
        format.html { render :edit }
        format.json { render json: @karina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karinas/1
  # DELETE /karinas/1.json
  def destroy
    @karina.destroy
    respond_to do |format|
      format.html { redirect_to karinas_url, notice: 'Karina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karina
      @karina = Karina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karina_params
      params.fetch(:karina, {})
    end
end
