class ProductsController < ApplicationController
  # GET /products
  # GET /items.xml
  def group
	@products = Product.where({:group => params[:id]}).all
	
	 respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @item}
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Onnistuit lisaamaan tuotteen!'
		format.html { redirect_to(admin_index_path) }
        format.xml { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Tekemasi tuotepaivitys onnistui.'
		format.html { redirect_to(admin_index_path)}
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  # Vanha tapa: @product = Product.find(params[:id])
  
  # ONGELMA: Where palauttaa kokoelman ActiveRecord-relaatioita, joten .firstin avulla saadaan objekti käpistelyyn
  # vois olla myös @product = Product.where({:group => params[:id]}).first
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(admin_index_path) }
      format.xml { head :ok }
    end
  end
end
