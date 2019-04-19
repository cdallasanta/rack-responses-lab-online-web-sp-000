class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.getlocal('+07:00')

    resp.write "#{time}\n"
    resp.write "#{time.zone}\n"

    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
