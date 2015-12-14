module ApplicationHelper
  def yes_no(attribute,options={})
    options[:yes] ||= 'Yes'
    options[:no] ||= 'No'
    capture_haml do
      haml_concat attribute ? options[:yes] : options[:no]
    end
  end
end
