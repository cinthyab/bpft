class RecetaController < ApplicationController
  # GET /receta
  # GET /receta.json

  def index
    @receta = Recetum.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @receta }
    end
  end

  # GET /receta/1
  # GET /receta/1.json
  def show
      
    @recetum = Recetum.find(params[:id])

    if @recetum.nil?
      redirect_to :action => "index"
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recetum }
    end
  end

  # GET /receta/new
  # GET /receta/new.json
  def new
    @recetum = Recetum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recetum }
    end
  end
def upload
  uploaded_io = params[:person][:picture]
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
    file.write(uploaded_io.read)
  end
end

  # GET /receta/1/edit
  def edit
    @recetum = Recetum.find(params[:id])
   
  end

  # POST /receta
  # POST /receta.json
  def create
    @recetum = Recetum.new(params[:recetum])

    respond_to do |format|
      if @recetum.save
        format.html { redirect_to @recetum, notice: 'Su receta fue guardada exitosamente.' }
        format.json { render json: @recetum, status: :created, location: @recetum }
      else
        format.html { render action: "new" }
        format.json { render json: @recetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /receta/1
  # PUT /receta/1.json
  def update
    @recetum = Recetum.find(params[:id])

    respond_to do |format|
      if @recetum.update_attributes(params[:recetum])
        format.html { redirect_to @recetum, notice: 'Su receta fue modificada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "editar" }
        format.json { render json: @recetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receta/1
  # DELETE /receta/1.json
  def destroy
    @recetum = Recetum.find(params[:id])
    @recetum.destroy

    respond_to do |format|
      format.html { redirect_to receta_url }
      format.json { head :no_content }
    end
   end
end
