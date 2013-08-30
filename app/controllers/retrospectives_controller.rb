class RetrospectivesController < ApplicationController
  before_action :set_retrospective, only: [:show, :edit, :update, :destroy]

  def index
    @retrospectives = Retrospective.all
  end

  def show
  end

  def new
    @retrospective = Retrospective.new
  end

  def edit
  end

  def create
    @retrospective = Retrospective.new(retrospective_params)

    respond_to do |format|
      if @retrospective.save
        format.html { redirect_to @retrospective, notice: 'Retrospective was successfully created.' }
        format.json { render action: 'show', status: :created, location: @retrospective }
      else
        format.html { render action: 'new' }
        format.json { render json: @retrospective.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @retrospective.update(retrospective_params)
        format.html { redirect_to @retrospective, notice: 'Retrospective was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @retrospective.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @retrospective.destroy
    respond_to do |format|
      format.html { redirect_to retrospectives_url }
      format.json { head :no_content }
    end
  end

  private

    def set_retrospective
      @retrospective = Retrospective.find(params[:id])
    end


    def retrospective_params
      params.require(:retrospective).permit(:name, :set_stage, :gather_data, :generate_insights, :decide_what_to_do, :close)
    end
end
