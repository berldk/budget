class ItemsController < ApplicationController
    def create
        @budget = Budget.find(params[:budget_id])
        @item = @budget.items.create(item_params)
        redirect_to budget_path(@budget)
    end
    
    def destroy
        @budget = Budget.find(params[:budget_id])
        @item = @budget.items.find(params[:id])
        @item.destroy
        redirect_to budget_path(@budget)
    end

    private
        def item_params
            params.require(:item).permit(:iName, :projectedCost, :actualCost, :iCategory, :user_id)
        end



end
    
    