class TodoList < ActiveRecord::Base

  has_many :todo_items, dependent: :destroy
  validates :title, :description, :color, :due_date, presence: true

  scope :complete, -> {where(complete: true)}
  scope :incompleted, -> {where(complete: false)}


  def to_s
    self.title
  end
end
