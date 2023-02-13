class CategoryMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_category(category)
    @category = category
    mail to: "swpatil@bestpeers.com", subject: "New Category Added in Inventory"
  end
end
