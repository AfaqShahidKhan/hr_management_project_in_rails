class EmployeesController < ApplicationController 

  def index
      @employees = Employee.all 
   end

 def new
    @employee = Employee.new

 end
  def edit 

    @employee= Employee.find(params[:id ])
  end


  

  def update 
    @employee= Employee.find(params[:id ])
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee has been updated!"
  else
      render :edit
    end

  end
   
  def show 
    @employee= Employee.find(params[:id])


  end
   

    def create
    @employee= Employee.new(employee_params)
    if @employee.save
        redirect_to employees_path, notice: "Employee has been created!"
    else
        render :new
      end
    end

  private 
   def employee_params 
    params.require(:employee).permit(:first_name, :last_name,:personal_email, :city, :state, :country , :pincode, :address_line_1, :address_line_2
    )
end 

end



