class Student < ApplicationRecord
	belongs_to :group#, optional: true
	#accepts_nested_attributes_for :group
	before_create :super_string

	def super_string
		#if (self.base_agradecimiento && self.base_agradecimiento_color && self.base_agradecimiento_3d && self.base_agradecimiento_tamaño) |= nil do
			self.base_agradecimiento_final = self.base_agradecimiento + " " + self.base_agradecimiento_color + ' ' + self.base_agradecimiento_3d + ' ' + self.base_agradecimiento_tamaño + ' ' + self.base_agradecimiento_fondo
		#end
		self.base_diploma_final = self.base_diploma + " " + self.base_diploma_color + ' ' + self.base_diploma_3d + ' ' + self.base_diploma_tamaño + ' ' + self.base_diploma_fondo
		self.base_foto_final = self.base_foto + " " + self.base_foto_color + ' ' + self.base_foto_3d + ' ' + self.base_foto_tamaño + ' ' + self.base_foto_fondo
		self.placa_agradecimiento_final = self.placa_agradecimiento + " " + self.placa_agradecimiento_color
		self.placa_diploma_final = self.placa_diploma + " " + self.placa_diploma_color
		self.placa_foto_final = self.placa_foto + " " + self.placa_foto_color
		self.placa_agradecimiento_final = self.anillo + " " + self.anillo_tamaño
	end

	before_save do |student|
		student.name = student.name.downcase.titleize
		student.email = student.email.downcase
	end
end


