class TestScaffoldsController < ApplicationController
  # GET /test_scaffolds
  # GET /test_scaffolds.json
  def index
    @test_scaffolds = TestScaffold.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_scaffolds }
    end
  end

  # GET /test_scaffolds/1
  # GET /test_scaffolds/1.json
  def show
    @test_scaffold = TestScaffold.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_scaffold }
    end
  end

  # GET /test_scaffolds/new
  # GET /test_scaffolds/new.json
  def new
    @test_scaffold = TestScaffold.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_scaffold }
    end
  end

  # GET /test_scaffolds/1/edit
  def edit
    @test_scaffold = TestScaffold.find(params[:id])
  end

  # POST /test_scaffolds
  # POST /test_scaffolds.json
  def create
    @test_scaffold = TestScaffold.new(params[:test_scaffold])

    respond_to do |format|
      if @test_scaffold.save
        format.html { redirect_to @test_scaffold, notice: 'Test scaffold was successfully created.' }
        format.json { render json: @test_scaffold, status: :created, location: @test_scaffold }
      else
        format.html { render action: "new" }
        format.json { render json: @test_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_scaffolds/1
  # PUT /test_scaffolds/1.json
  def update
    @test_scaffold = TestScaffold.find(params[:id])

    respond_to do |format|
      if @test_scaffold.update_attributes(params[:test_scaffold])
        format.html { redirect_to @test_scaffold, notice: 'Test scaffold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_scaffolds/1
  # DELETE /test_scaffolds/1.json
  def destroy
    @test_scaffold = TestScaffold.find(params[:id])
    @test_scaffold.destroy

    respond_to do |format|
      format.html { redirect_to test_scaffolds_url }
      format.json { head :no_content }
    end
  end
end
