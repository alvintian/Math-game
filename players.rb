class Players
attr_accessor :name
attr_accessor :current_health
def initialize(name)
	@name=name
	@current_health=3
	@max_health=3
end
  def dead?
    @current_health <= 0
  end

  def summary
    "#{@name} has #{@current_health}/3."
  end

end