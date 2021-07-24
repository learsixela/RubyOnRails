class RolesController < ApplicationController
  def index
    @roles = Rol.all
    @us = Usuario.select(:id, :nombre, :apellido, :email, :rol_id)
    # select id,nombre, apellido, email, rol_id from usuario
    
    @hash1={
      :usuario => @us,
      :rol => @roles
    }

    render json: @hash1
  end

  def new

  end

  def show
  end

  def update
  end

  def delete
  end

  def create
    
  end

  def perro
  end
end
