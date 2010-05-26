class Clawhammer
  class <<self
    def hit(target)
      new(target).hit
    end

    def extract(nail)
      new(nail).extract
    end

    # Syntactic sugar
    def embed(nail)
      hammer(nail)
    end
  end

  def initialize(target)
    @target = target
  end

  def hit
    hit_target
    transfer_force_to_handle
  end

  def extract
    grip_nail
    rotate_hammer
  end

  private
  def hit_target
    # .. impact physics on @target
  end

  def grip_nail
    # .. friction physics on @target ..
  end

  def rotate_hammer
    # .. positional physics
    transfer_force_to_handle
  end

  def transfer_force_to_handle
    # .. force transfer physics ..
  end
end
