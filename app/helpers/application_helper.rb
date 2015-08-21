module ApplicationHelper
  def alert_css_class(alert)
    if alert == 'alert'
      'alert-danger'
    else
      'alert-info'
    end
  end
end
