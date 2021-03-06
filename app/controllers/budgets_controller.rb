class BudgetsController < ApplicationController
 # before_action :set_budget
  #before_action :authenticate_user!
  def index
        @budgets = Budget.all
    end

    def show
        @budget = Budget.find(params[:id])
    end    
    
    def new
       # @budget = Budget.new
       @budget = current_user.budgets.build
    end
     
    def edit
      @budget = Budget.find(params[:id])
    end

    def create
     # @budget = Budget.new(budget_params)  
     @budget = current_user.budgets.build(budget_params)    
        if @budget.save
          redirect_to @budget
        else
          render 'new'
        end
      end

    def update
      @budget = Budget.find(params[:id])       
        if @budget.update(budget_params)
          redirect_to @budget
        else
          render 'edit'
        end
    end
    
    def destroy
      @budget = Budget.find(params[:id])
      @budget.destroy
     
      redirect_to budgets_path
    end

      private
        def budget_params
          params.require(:budget).permit(
                      :name, 
                      :actualIncome, :actualExtraIncome, 
                      :projectedIncome, :projectedExtraIncome,
                      :period, :startDate, :endDate, 
                      :actualExpense, :projectedExpense)
        end
end
