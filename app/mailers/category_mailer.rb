class CategoryMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_category
    @category = params[:category]
    mail (to: 'test@gmail.com', subject: 'New Category Added in Inventory')
  end
end
