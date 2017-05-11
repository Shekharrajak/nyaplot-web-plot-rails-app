# require 'daru'
class WelcomeController < ApplicationController
  def index
  	@hello = "Shekhar hello!"
  	@samples = 5

	@a = Daru::Vector.new_with_size(@samples) {r=rand(5); r==4 ? nil: r}
	@b = Daru::Vector.new_with_size(@samples) {r=rand(5); r==4 ? nil: r}
	# ds = Daru::DataFrame.new({:a=>a,:b=>b}, order: [:b, :a])
	@ds = Daru::DataFrame.new({:a=>@a,:b=>@b}, order: [:b, :a], index: ['k1', 'k2', 'k3', 'k4', 'k5'])

	@df = Daru::DataFrame.new({
	  a: Array.new(100) {|i| i},
	  b: 100.times.map{rand}
	})
	@plot = Nyaplot::Plot.new

	@dv = Daru::Vector.new ['III']*10 + ['II']*5 + ['I']*5, type: :category, categories: ['I', 'II', 'III']
  end
end
