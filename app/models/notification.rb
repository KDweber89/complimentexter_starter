require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["=------"]
    auth_token =  ENV["-----"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    @client.account.messages.create({
  :from => '+12187369061'    
})
  end

  def random_compliment
    compliments = ["this is a compliment"] #enter compliments there
    # Generates a random compliment to send to the textee
  end
end