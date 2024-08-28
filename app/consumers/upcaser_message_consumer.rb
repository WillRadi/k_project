class UpcaserMessageConsumer < Racecar::Consumer
  subscribes_to "general_topic"

  def process(message)
    File.open('log_consumer.txt', 'a') { |fo| fo.puts "UpcaserMessageReceived | MSG: #{message.value.upcase}".force_encoding("UTF-8") }

    produce(message.value.upcase, topic: 'duck_topic')
  end
end
