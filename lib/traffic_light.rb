class TrafficLight
  def initialize
    @state = nil
  end

  def next_state(klass = Green)
    @state = klass.new(self)

    @state.beep
    @state.start_timer
  end
end

class State
  def initialize(light)
    @light = light
  end

  def beep
    puts "Color is now #{self.class.name.downcase}"
  end

  def next_state
  end

  def start_timer
  end
end

class Green < State
  def next_state
    @light.next_state(Yellow)
  end

  def start_timer
    sleep 5
    next_state
  end
end

class Yellow < State
  def next_state
    @light.next_state(Red)
  end

  def start_timer
    sleep 2
    next_state
  end
end

class Red < State
  def next_state
    @light.next_state(Green)
  end

  def start_timer
    sleep 10
    next_state
  end
end
