class StoresController < ApplicationController

	def index
		@stores = Store.all 
	end

	def show
		@stores = Store.find(params:id)
    end

    def new
    	@stores = Store.new
    end

end