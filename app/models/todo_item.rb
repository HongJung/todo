class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  validates :title, :status, presence: true

end
