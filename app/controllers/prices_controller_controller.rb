class PricesControllerController < ApplicationController
	 # GET /prices
  # GET /prices.xml
  def index
    @prices = Prices.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prices }
    end
  end

  # GET /prices/1
  # GET /prices/1.xml
  def show
    @prices = Prices.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prices }
    end
  end

  # GET /prices/new
  # GET /prices/new.xml
  def new
    @prices = Prices.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prices }
    end
  end

  # GET /prices/1/edit
  def edit
    @prices = Prices.find(params[:id])
  end

  # POST /prices
  # POST /prices.xml
  def create
    @prices = Prices.new(params[:prices])

    respond_to do |format|
      if @prices.save
        flash[:notice] = 'Prices was successfully created.'
        format.html { redirect_to(@prices) }
        format.xml  { render :xml => @prices, :status => :created, :location => @prices }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prices.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prices/1
  # PUT /prices/1.xml
  def update
    @prices = Prices.find(params[:id])

    respond_to do |format|
      if @prices.update_attributes(params[:prices])
        flash[:notice] = 'Prices was successfully updated.'
        format.html { redirect_to(@prices) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prices.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prices/1
  # DELETE /prices/1.xml
  def destroy
    @prices = Prices.find(params[:id])
    @prices.destroy

    respond_to do |format|
      format.html { redirect_to(prices_url) }
      format.xml  { head :ok }
    end
  end

  def add
    @price = Price.new
    @price.vendor_id = 1
    @price.grade = params[:grade]
    @price.amount = params[:amount]
    @price.created_at = Time.now
    @price.updated_at = @price.created_at
    @price.save
  end
end
