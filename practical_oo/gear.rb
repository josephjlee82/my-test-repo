class Gear
	attr_reader :chain_gear, :cog

	def initialize (chain_gear, cog)
		@chain_gear = chain_gear
		@cog = cog
	end

	def ratio
		chain_gear / cog.to_f
	end
end

puts Gear.new(5,2).ratio