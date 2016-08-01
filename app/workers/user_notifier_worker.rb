class UserNotifierWorker
  include Sidekiq::Worker

  def perform(email, thought)
    UserNotifier.send_randomness_email(email, thought).deliver_now
  end
end

# parameters are the things you care about
# perform_async -- do this now
# perform_in -- set some time delay
# these are pulling methods from the module, looking to define what we are looking to perform

# taking a class method, firing it off, starting a new instance to execute
# on that instance, defining the perform

# writing class methods, they should also be firing off instance methods too to get the full benefit


# deliver_now - ActiveJob -- by passes active job all together
# deliver_now - or deliver_later
