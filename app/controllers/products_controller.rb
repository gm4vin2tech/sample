class ProductsController < ApplicationController
	def index
		@products = Product.all
		# render plain:"Welcome"
		# render :file => "products/welcome"
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
	end

	def create
		# binding.pry
		# params[:product] #ForbiddenAttributesError
		@product = Product.new(product_params)
		# render plain:"Create "
		if @product.save
			#show
			# render plain:"Created "
			redirect_to @product
		else
			render 'new' #new
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product #show
		else
			render 'edit' #edit
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private
	def product_params
		params.require(:product).permit(:name, :description)
	end
end
