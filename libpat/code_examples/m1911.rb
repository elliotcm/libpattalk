class M1911
  class <<self
    def load(rounds)
      @gun = new(rounds)
    end

    def shoot(target)
      @gun = load([Bullet.new]) if @gun.nil? or @gun.empty?
      @gun.target = target
      @gun.fire
    end
  end

  def initialize(rounds=[])
    @rounds = rounds
  end

  attr_accessor :target

  def fire
    chamber(rounds.pop)
    raise_hammer
    release_hammer
    eject_casing
  end
  alias_method :fire, :pull_trigger

  def empty?
    @rounds.empty?
  end

  def safe
    engage_thumb_safe || release_grip_safe
  end

  def eject_magazine
    release_magazine_catch
  end

  def manual_eject
    # .. code ..
  end

  def manual_cock
    # .. code ..
  end

  def release_slide_lock
    # .. code ..
  end

  private
  def chamber(round)
    # .. code ..
  end

  def raise_hammer
    # .. code ..
  end

  def release_hammer
    # .. code ..
  end

  def eject_casing
    # .. code ..
  end

  def engage_thumb_safe
    # .. code ..
  end

  def release_grip_safe
    # .. code ..
  end

  def release_magazine_catch
    # .. code ..
  end

  # .. more private methods, encapsulated classes ..
end
