class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_req = req.path.split("/items/").last
      price = @@items.find {|item| item.name ==
    
    
  end
end