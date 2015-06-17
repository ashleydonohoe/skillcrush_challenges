class Ferret #capitalized since all objects are constants

	def set_name=(ferret_name)
		@name = ferret_name #instance variable for each ferret
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def squeal
		return "squeee"
	end
end

my_ferret = Ferret.new #creates new instance of Ferret class and a new Ferret object
my_ferret.set_name = "Fredo"
ferret_name = my_ferret.get_name
puts "#{ferret_name} says #{my_ferret.squeal}."