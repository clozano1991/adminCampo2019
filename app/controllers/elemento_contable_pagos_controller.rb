class ElementoContablePagosController < ApplicationController
before_action :authenticate_user! 
  
	def index
		#@elemento_contables=current_user.campos.find(params[:campo_id]).elemento_contables.all		
		@campo=current_user.campos.find(params[:campo_id])
        @elemento_contable=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id])
	    @elemento_contable_pagos=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id]).elemento_contable_pagos.all
	    # para tener la lista de proveedores a quiem asignar el elemento contable
        @proveedors=current_user.campos.find(params[:campo_id]).proveedors.all.order("razonsocial DESC")
	    #ahora necesitamos un arreglo que contenga la razon social de los proveedores seleccionados en forma de string
	    # es para la lista desplegable
	    @arregloNombreProveedors=["Sin Proveedor Registrado"]
	    @arregloRutProveedors = ["Sin RUT Registrado"]
	    for x in @proveedors do
	    	@arregloNombreProveedors.push(x.razonsocial.to_s) 
	    	@arregloRutProveedors.push(x.rut.to_s) 
	    end 
	    # el siguiente es para crear un elemento contable
	    @elemento_contable_pago=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id]).elemento_contable_pagos.build
	end



	def create
		@campo=current_user.campos.find(params[:campo_id])
		@elemento_contable=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id])
		@elemento_contable_pago=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id]).elemento_contable_pagos.build(elemento_contable_pago_params)
		@elemento_contable_pago.save
		respond_to do|format|
			format.html {redirect_to user_campo_elemento_contable_elemento_contable_pagos_path(current_user, @campo, @elemento_contable)}
			format.js 
		end	
	end 


	def update
		@campo=current_user.campos.find(params[:campo_id])
		@elemento_contable=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id])
		@elemento_contable_pago=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id]).elemento_contable_pagos.find(params[:id])
		@elemento_contable_pago.update(elemento_contable_pago_params)
		respond_to do|format|
			format.html {redirect_to user_campo_elemento_contable_elemento_contable_pagos_path(current_user, @campo, @elemento_contable)}
			format.js 
		end
	end 
 

	def destroy
		@elemento_contable_pago=current_user.campos.find(params[:campo_id]).elemento_contables.find(params[:elemento_contable_id]).elemento_contable_pagos.find(params[:id])
	    @elemento_contable_pago.destroy
	    respond_to do|format|
			format.html {redirect_to index_path}
			format.js 
		end
	end









	def elemento_contable_pago_params 
		params.require(:elemento_contable_pago).permit(:fecha, :montopagado, :metodopago, :observacion) 
	end


end 
