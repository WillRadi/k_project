class UpcaserMessageConsumer < Racecar::Consumer
  subscribes_to "general_topic"

  def process(message)
    File.open('log_consumer', 'a') { |fo| fo.puts "Received message: #{message.value.upcase}" }
  end
end
