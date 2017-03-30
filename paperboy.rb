class Paperboy
attr_reader :name, :experience, :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    expquota = 50 + @experience / 2
    end

  def deliver(delstart, delend)
    quota = 50
    deliveries = delend - delstart
    mindelivery = self.quota

    if deliveries > quota
      initialpayment = quota * 0.25
    else
      initialpayment = deliveries * 0.25
    end
    @earnings += initialpayment

    if deliveries < quota
      @earnings -= 2
    else
      extrapayment = (deliveries - quota) * 0.50
      @earnings += extrapayment
    end

    @experience += deliveries
  end


  def report
    "Hey im #{@name.capitalize!}, i've delivered #{@experience} papers and made #{@earnings} bucks!"
  end
end
