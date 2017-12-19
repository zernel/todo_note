module ApplicationHelper
  def flash_klass(type)
    case type
    when 'success'
      return 'alert-success'
    when 'error'
      return 'alert-danger'
    else
      return 'alert-warning'
    end
  end
end
