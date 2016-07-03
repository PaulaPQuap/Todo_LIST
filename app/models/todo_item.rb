class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  
  def completed?
      !completed_at.blank?  # The complete_at colum should not be blank on date #
  end
  
end
