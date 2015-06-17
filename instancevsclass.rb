class Ferret

	@@total_ferrets = 0

	def initialize
		@@total_ferrets += 1
	end

	def self.current_count
		puts "There are currently #{@@total_ferrets} instances of my Ferret class."
	end

	def set_name=(ferret_name)
		@name = ferret_name
	end

	def get_name
		return @name
	end
end

my_ferret = Ferret.new
my_ferret.set_name = "John"
ferret_name = my_ferret.get_name

puts Ferret.current_count