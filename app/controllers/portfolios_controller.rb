class PortfoliosController < ApplicationController
    
    def index
        @portfolios = Portfolio.all
    end

    def angular
      @portfolios = Portfolio.angular
    end

    def ruby
      @portfolios = Portfolio.ruby_on_rails_portfolio_items
    end

    def new
        @portfolio = Portfolio.new
        3.times { @portfolio.technologies.build }
    end

    def create
        @portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body,
          technologies_attributes: [:name]))

        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created." }
            format.json { render :show, status: :created, location: @portfolio }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @portfolio.errors, status: :unprocessable_entity }
          end
        end
    end
    def edit
        @portfolio = Portfolio.find(params[:id])
    end
    def update
        @portfolio = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio.update(params.require(:portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
            format.json { render :show, status: :ok, location: @portfolio }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @portfolio.errors, status: :unprocessable_entity }
          end
        end
    end
    def show
        @portfolio = Portfolio.find(params[:id])
    end

    def destroy
        @portfolio = Portfolio.find(params[:id])
        @portfolio.destroy
    
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: "Portfolio was successfully destroyed." }
          format.json { head :no_content }
        end
      end
end
