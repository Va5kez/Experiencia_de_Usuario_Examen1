class LoansController < ApplicationController
  def index
    @loan = Loan.all
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)

   if @loan.save
     redirect_to prestamos_path, notice: "Prestamo creado con exito"
   else
     render :new
   end
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def edit
  end

  def destroy
      @loan = Loan.find(params[:id])
      @loan.destroy
      redirect_to prestamos_path, notice: "Prestamo eliminado con exito"
  end

  protected
  def loan_params
    params.require(:loan).permit(:client_name, :loan_type, :amount )
  end
end
