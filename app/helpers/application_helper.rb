module ApplicationHelper
  def alert_css_class(alert)
    if alert == 'alert'
      'alert-danger'
    else
      'alert-info'
    end
  end

  def google_maps_image(latitude, longitude)
    "https://maps.googleapis.com/maps/api/staticmap?size=300x150&zoom=13&scale=2&markers=#{latitude},#{longitude}"
  end
end
