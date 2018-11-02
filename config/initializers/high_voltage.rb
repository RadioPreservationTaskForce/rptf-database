HighVoltage.configure do |config|
  config.parent_engine = Blacklight::Engine
  config.home_page = 'home'
  config.layout = 'blacklight'
  config.route_drawer = HighVoltage::RouteDrawers::Root
end
