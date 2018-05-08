class StudentsController < ApplicationController
	before_action :require_user

	def new
		@student = Student.new
		@group = Group.find(params[:id])
		@paquete = {
			base: {
				color: [nil,'blue', 'black', 'bitch'],
				fondo: [nil,'F/Yute', 'F/Beige', 'F/Negro', 'F/Cristal'],
				tipo: [nil,'Jirafa', 'Petatillo', 'Estrella'],
				tamaño: [nil,'Doble', 'Triple'],
				placa: {
					tipo: [nil,'Normal', 'Con Corte'],
					color: [nil,'Chocolate', 'Marfin']	
					}
				},
			anillo: {
				nombre: [nil,'alianza rectangular', 'pedro y pablo'],
				tamaño: [nil,1,2,3,4,5,6,7,8,9,10,11,12]
				}
			}
	end

	def create
		@group = Group.new
		@group = Group.find(params[:id])
		@student = Student.new(student_params)

		if @student.save!
			redirect_to show_group_path
		else
			render 'new'
		end
	end

	def show
		@group = Group.find(params[:id])
		@students = @group.students
		@base_agradecimiento = @students.select(:base_agradecimiento_final).group(:base_agradecimiento_final).having("count(*) > 0").count
		@base_diploma = @students.select(:base_diploma_final).group(:base_diploma_final).having("count(*) > 0").count
		@base_foto = @students.select(:base_foto_final).group(:base_foto_final).having("count(*) > 0").count
	end


	def email
	end


	private
	def student_params
		params.require(:student).permit(:name, :email, :cellphone, :base_agradecimiento, :base_agradecimiento_color, 
			:base_agradecimiento_3d, :base_agradecimiento_tamaño, :base_agradecimiento_fondo, :placa_agradecimiento, :base_diploma, :base_diploma_color,
			:base_diploma_3d, :base_diploma_tamaño, :base_diploma_fondo, :placa_diploma, :base_foto, :base_foto_color, :base_foto_3d, :base_foto_tamaño, :base_foto_fondo,
			:placa_foto, :anillo, :anillo_tamaño, :regalo1, :regalo2, :regalo3, :regalo4, :group_id, :placa_agradecimiento_color, :placa_diploma_color,
			:placa_foto_color)
	end

end

