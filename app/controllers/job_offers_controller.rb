class JobOffersController < ApplicationController
    # Asegúrate de que el usuario esté autenticado antes de permitir cualquier acción
    before_action :authenticate_user!
  
    # Solo los administradores pueden crear nuevas ofertas
    before_action :authorize_admin, only: [:new, :create]
  
    def new
      @job_offer = JobOffer.new
    end
  
    def create
      @job_offer = JobOffer.new(job_offer_params)
      @job_offer.user = current_user  # Asocia la oferta al usuario actual (que debería ser Esteban)
  
      if @job_offer.save
        redirect_to @job_offer, notice: 'Job offer was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    # Filtro para asegurarse de que solo el administrador puede crear ofertas
    def authorize_admin
      redirect_to(root_path, alert: 'Access denied.') unless current_user.admin?
    end
  
    # Fuerte parámetro para la creación de ofertas
    def job_offer_params
      params.require(:job_offer).permit(:title, :description, :requirements, :salary)
    end
  end
  