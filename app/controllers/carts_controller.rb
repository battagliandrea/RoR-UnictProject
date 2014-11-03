class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  #INTERCETTA L'ECCEZIONE SOLLEVATA DA cart.find()
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Carrello creato con successo!' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Carrello modificato con successo!' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
     @cart.destroy if @cart.id == session[:cart_id]
     session[:cart_id] = nil
      respond_to do |format|
      #UNA VOLTA ELIMINATO IL CARRELLO VERREMO RIPORTATI ALLA PAGINA DEL CATALOGO
      format.html { redirect_to store_index_path, notice: 'Carrello svuotato con successo!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params[:cart]
    end

  #SERVE PER GESTIRE LE RICHIESTE DI ERRORE NEL CASO CHE SI SELEZIONI UNCARRELLO NON VALIDO
  def invalid_cart
    #UTILIZIAMO IL LOGGER PER SALVARE UN MESSAGGIO DI ERRORE
    logger.error "Attempt to access invalid cart #{params[:id]}"
    #REINDIRIZIAMO L'UTENTE NELLA PAGINA DEL CATALOGO
    redirect_to store_index_path, notice: 'Invalid cart'
  end
end
