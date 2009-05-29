class ProductDesignsController < ApplicationController
  # GET /product_designs
  # GET /product_designs.xml
  def index
    @product_designs = ProductDesign.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_designs }
    end
  end

  # GET /product_designs/1
  # GET /product_designs/1.xml
  def show
    @product_design = ProductDesign.find(params[:id])

    respond_to do |format|
      format.fbml # show.fbml.erb
      format.html # show.html.erb
      format.xml  { render :xml => @product_design }
    end
  end

  # GET /product_designs/new
  # GET /product_designs/new.xml
  def new
    @product_design = ProductDesign.new

    respond_to do |format|
      format.fbml # new.fbml.erb
      format.html # new.html.erb
      format.xml  { render :xml => @product_design }
    end
  end

  # GET /product_designs/1/edit
  def edit
    @product_design = ProductDesign.find(params[:id])
  end

  # POST /product_designs
  # POST /product_designs.xml
  def create
    # set creating_user_id in the model, obviously don't pass via params
    # Facebook removes underscores from parameter names, so no product_design
    @product_design = ProductDesign.new(params[:productdesign])

    respond_to do |format|
      if @product_design.save
        flash[:notice] = 'ProductDesign was successfully created.'
        format.html { redirect_to(@product_design) }
        format.xml  { render :xml => @product_design, :status => :created, :location => @product_design }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_design.errors, :status => :unprocessable_entity }
      end
    end

#    redirect_to new_product_design_path
  end

  # PUT /product_designs/1
  # PUT /product_designs/1.xml
  def update
    @product_design = ProductDesign.find(params[:id])

    respond_to do |format|
      if @product_design.update_attributes(params[:product_design])
        flash[:notice] = 'ProductDesign was successfully updated.'
        format.html { redirect_to(@product_design) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_design.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_designs/1
  # DELETE /product_designs/1.xml
  def destroy
    @product_design = ProductDesign.find(params[:id])
    @product_design.destroy

    respond_to do |format|
      format.html { redirect_to(product_designs_url) }
      format.xml  { head :ok }
    end
  end
end
