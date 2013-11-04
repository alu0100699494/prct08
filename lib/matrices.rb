class Matriz
	attr_accessor :N, :M, :contenido #Getters & Setters
	
	def initialize(n,m) #Inicializa el valor de las filas (n) y columnas (m).
		@N, @M = n, m
		@contenido
	end
	
	def [](i)
		if @contenido != nil
			@contenido[i]
		else
			nil
		end
	end
	
	def []=(i,other)
		if @contenido == nil
			@contenido = [other]
		elsif i < @N 
			if other.size <= @M
				@contenido[i] = other
			end
		end
	end
end
