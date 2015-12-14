json.array!(@todo_lists) do |todo_list|
  json.extract! todo_list, :id, :title, :description, :color, :due_date, :complete
  json.url todo_list_url(todo_list, format: :json)
end
