class Command
  NotImplementedError = Class.new(NoMethodError)

  def initialize(simulation:, arguments: [])
    @simulation = simulation
    @arguments = arguments
  end

  def execute
    fail NotImplementedError, 'Subclasses must implement #execute'
  end
end
