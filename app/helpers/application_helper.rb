module ApplicationHelper
  def analytics_events
    Array(flash[:events]).map do |event|
      "_gaq.push(#{raw event.to_json});"
    end.join("\n")
  end
end
