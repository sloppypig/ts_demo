class TopicsDocDropsController < ApplicationController
  # GET /topics_doc_drops
  # GET /topics_doc_drops.json
  def index
    @topics_doc_drops = TopicsDocDrop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics_doc_drops }
    end
  end

  # GET /topics_doc_drops/1
  # GET /topics_doc_drops/1.json
  def show
    @topics_doc_drop = TopicsDocDrop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topics_doc_drop }
    end
  end

  # GET /topics_doc_drops/new
  # GET /topics_doc_drops/new.json
  def new
    @topics_doc_drop = TopicsDocDrop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @topics_doc_drop }
    end
  end

  # GET /topics_doc_drops/1/edit
  def edit
    @topics_doc_drop = TopicsDocDrop.find(params[:id])
  end

  # POST /topics_doc_drops
  # POST /topics_doc_drops.json
  def create
    @topics_doc_drop = TopicsDocDrop.new(params[:topics_doc_drop])

    respond_to do |format|
      if @topics_doc_drop.save
        format.html { redirect_to @topics_doc_drop, notice: 'Topics doc drop was successfully created.' }
        format.json { render json: @topics_doc_drop, status: :created, location: @topics_doc_drop }
      else
        format.html { render action: "new" }
        format.json { render json: @topics_doc_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /topics_doc_drops/1
  # PUT /topics_doc_drops/1.json
  def update
    @topics_doc_drop = TopicsDocDrop.find(params[:id])

    respond_to do |format|
      if @topics_doc_drop.update_attributes(params[:topics_doc_drop])
        format.html { redirect_to @topics_doc_drop, notice: 'Topics doc drop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @topics_doc_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics_doc_drops/1
  # DELETE /topics_doc_drops/1.json
  def destroy
    @topics_doc_drop = TopicsDocDrop.find(params[:id])
    @topics_doc_drop.destroy

    respond_to do |format|
      format.html { redirect_to topics_doc_drops_url }
      format.json { head :no_content }
    end
  end
end
