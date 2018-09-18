class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_req = req.path.split('/items/').last
      item_found = @@items.find {|item| item.name == item_req}
      resp.write item_found.price 
    else 
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end
  
  
end