class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    @controller.introduction
    puts
  end
end
