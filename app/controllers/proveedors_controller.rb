class ProveedorsController < ApplicationController
	before_action :authenticate_user!

	def index
		@proveedors=current_user.campos.find(params[:campo_id]).proveedors.all.order("razonsocial DESC")
		@campo=current_user.campos.find(params[:campo_id])	
	end 

    def new
		@campo=current_user.campos.find(params[:campo_id])
		@proveedor=current_user.campos.find(params[:campo_id]).proveedors.build
	end

    def create
		@campo=current_user.campos.find(params[:campo_id])
		@proveedor=current_user.campos.find(params[:campo_id]).proveedors.build(proveedor_params)
		@proveedor.save
		respond_to do|format|
			format.html {redirect_to user_campo_proveedors_path(current_user,@campo)}
			format.js  
		end
	end

	def edit
		@campo=current_user.campos.find(params[:campo_id])
		@proveedor=current_user.campos.find(params[:campo_id]).proveedors.find(params[:id])
	end

	def update
		@campo=current_user.campos.find(params[:campo_id])
		@proveedor=current_user.campos.find(params[:campo_id]).proveedors.find(params[:id])
		@proveedor.update(proveedor_params)
		respond_to do|format|
			format.html {redirect_to user_campo_proveedors_path(current_user,@campo)}
			format.js 
		end
	end 

    def destroy
		@proveedor=current_user.campos.find(params[:campo_id]).proveedors.find(params[:id])
	    @proveedor.destroy
	    respond_to do|format|
			format.html {redirect_to index_path}
			format.js 
		end
	end



    def detectandoProveedorConRazonSocial
    	@campo=current_user.campos.find(params[:campo_id])
        @proveedor = current_user.campos.find(params[:campo_id]).proveedors.where("razonsocial = ?" ,params[:razonSocial])
        respond_to do|format| 
			format.json{ render json: @proveedor}
		end		
    end










	def proveedor_params
		params.require(:proveedor).permit(:razonsocial, :rut, :tipoproductoservicio, 
			:direccion, :nombrecontacto, :telefonocontacto, :parapagobanco, 
			:parapagotipocuentabancaria, :parapagonumerocuentabancaria, 
			:parapagonombreasociadoacuentabancaria, :parapagorutasociadoacuentabancaria, 
			:correoelectronicocontacto, :observacion)
	end
 
end
  