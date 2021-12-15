class ProductController < ApplicationController
  # before_action :detail_params, only: %i[ Detail ]

  def Laptop

    @Lap = Product.joins(:Battery,:Camera,:Category,:Connection,:Graphic,:Os,:Processor,:Ram,:Rom,:Screen,:Sound,:Structure).where(Category: {Categories_id: 2 })

  end

  def Phone
  end

  def Tablet
  end

  def Sound
  end

  def Accessories
  end

  def Detail 
   @pro = Product.find(params[:id])
   @rating = [0,0,0,0,0]
   @feedback = Feedback.joins(:Product)
   @cate = Category.includes(:Product).where(Product: {id: @pro.id})
   @img = Image.includes(:Product).where(Product: {id: @pro.id})
  end




  

end
