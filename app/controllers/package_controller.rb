class PackageController < ApplicationController
	before_action :require_user

	def show
		@student = Student.find(params[:id])
	end

	def index
		@student = Student.find(params[:id])
		@group = Group.find(@student.group_id)
		@paquete = {
			base: {
				color: ['Verde','Negro', 'Chocolate', 'Caoba'],
				fondo: ['F/Yute', 'F/Beige', 'F/Negro', 'F/Cristal'],
				tipo: ['Jirafa', 'Petatillo', 'Estrella'],
				tamaño: ['Doble', 'Triple'],
				placa: {
					tipo: ['Normal', 'Con Corte', 'Berlin', 'Curvas'],
					color: ['Chocolate', 'Marfin', 'Oro Cepillado Arena Chocolate']	
					}
				},
			anillo: {
				nombre: ['alianza rectangular', 'alianza engarzado'],
				tamaño: [1,2,3,4,5,6,7,8,9,10,11,12]
				}
			}
	end

	def update
	end

	private
	def student_params
		params.require(:student).permit(:name, :email, :cellphone, :base_agradecimiento, :base_agradecimiento_color, 
			:base_agradecimiento_3d, :base_agradecimiento_tamaño, :base_agradecimiento_fondo, :placa_agradecimiento, :base_diploma, :base_diploma_color,
			:base_diploma_3d, :base_diploma_tamaño, :base_diploma_fondo, :placa_diploma, :base_foto, :base_foto_color, :base_foto_3d, :base_foto_tamaño, :base_foto_fondo,
			:placa_foto, :anillo, :anillo_tamaño, :regalo1, :regalo2, :regalo3, :regalo4, :group_id, :placa_agradecimiento_color, :placa_diploma_color,
			:placa_foto_color)
	end

	private
	def group_params
		params.require(:group).permit(:university, :degree, :representative, :generation)
	end


end
