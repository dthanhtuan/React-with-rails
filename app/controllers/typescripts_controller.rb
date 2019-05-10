class TypescriptsController < ApplicationController
  before_action :set_typescript, only: [:show, :edit, :update, :destroy]

  # GET /typescripts
  # GET /typescripts.json
  def index
  end

  # GET /typescripts/1
  # GET /typescripts/1.json
  def show
  end

  # GET /typescripts/new
  def new
    @typescript = Typescript.new
  end

  # GET /typescripts/1/edit
  def edit
  end

  # POST /typescripts
  # POST /typescripts.json
  def create
    @typescript = Typescript.new(typescript_params)

    respond_to do |format|
      if @typescript.save
        format.html { redirect_to @typescript, notice: 'Typescript was successfully created.' }
        format.json { render :show, status: :created, location: @typescript }
      else
        format.html { render :new }
        format.json { render json: @typescript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typescripts/1
  # PATCH/PUT /typescripts/1.json
  def update
    respond_to do |format|
      if @typescript.update(typescript_params)
        format.html { redirect_to @typescript, notice: 'Typescript was successfully updated.' }
        format.json { render :show, status: :ok, location: @typescript }
      else
        format.html { render :edit }
        format.json { render json: @typescript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typescripts/1
  # DELETE /typescripts/1.json
  def destroy
    @typescript.destroy
    respond_to do |format|
      format.html { redirect_to typescripts_url, notice: 'Typescript was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typescript
      @typescript = Typescript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typescript_params
      params.fetch(:typescript, {})
    end
end
