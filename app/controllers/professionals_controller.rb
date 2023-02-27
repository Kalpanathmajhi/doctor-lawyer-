class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  def index
    @professionals = Professional.all
  end

  def show
  end

  def new
    @professional = Professional.new
  end

  def edit
  end

  def create
    @professional = Professional.new(professional_params)

    if @professional.save
      redirect_to @professional, notice: 'Professional was successfully created.'
    else
      render :new
    end
  end

  def update
    if @professional.update(professional_params)
      redirect_to @professional, notice: 'Professional was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @professional.destroy
    redirect_to professionals_url, notice: 'Professional was successfully destroyed.'
  end

  private
    def set_professional
      @professional = Professional.find(params[:id])
    end

    def professional_params
      params.require(:professional).permit(:name)
    end
end
