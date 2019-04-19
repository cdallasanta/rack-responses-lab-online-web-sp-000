class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.getlocal('-08:00')

    resp.write "#{time.hour}\n"
    resp.write "#{time.zone}\n"

    if time.hour >= 12
      resp.write "Good Afternoon!, or Morning, these tests aren't helpful..."
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
