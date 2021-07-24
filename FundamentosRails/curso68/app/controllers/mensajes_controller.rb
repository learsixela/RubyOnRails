class MensajesController < ApplicationController
  before_action :set_mensaje, only: %i[ show edit update destroy ]

  # GET /mensajes or /mensajes.json
  def index
    @mensajes = Mensaje.all
    @usuarios = Usuario.all
  end

  # GET /mensajes/1 or /mensajes/1.json
  def show
    @usuarios = Usuario.all
  end

  # GET /mensajes/new
  def new
    @mensaje = Mensaje.new
    @usuarios = Usuario.all
  end

  # GET /mensajes/1/edit
  def edit
  end

  # POST /mensajes or /mensajes.json
  def create
    @mensaje = Mensaje.new(mensaje_params)

    respond_to do |format|
      if @mensaje.save
        format.html { redirect_to @mensaje, notice: "Mensaje was successfully created." }
        format.json { render :show, status: :created, location: @mensaje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mensaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensajes/1 or /mensajes/1.json
  def update
    respond_to do |format|
      if @mensaje.update(mensaje_params)
        format.html { redirect_to @mensaje, notice: "Mensaje was successfully updated." }
        format.json { render :show, status: :ok, location: @mensaje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mensaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensajes/1 or /mensajes/1.json
  def destroy
    @mensaje.destroy
    respond_to do |format|
      format.html { redirect_to mensajes_url, notice: "Mensaje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensaje
      @mensaje = Mensaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mensaje_params
      params.require(:mensaje).permit(:content, :usuario_id)
    end
end
