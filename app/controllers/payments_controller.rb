class PaymentsController < ApplicationController
  def new
    @loan = Loan.find(params[:loan_id])
    @payment = @loan.payment.build
  end

  def create
    @loan = Loan.find(params[:loan_id])
    @payment = @loan.payment.build(payment_params)

   if @payment.save
     redirect_to prestamos_path, notice: "AGREGADO CON EXITO"
   else
     flash[:errors] = "NO SE PUDO AGREGAR"
     render :new
   end
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    redirect_to prestamos_path, notice: "ELIMINADO CON EXITO"
  end

  protected
  def payment_params
    params.require(:payment).permit(:amount)
  end
end
