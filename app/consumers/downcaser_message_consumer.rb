class DowncaserMessageConsumer < Racecar::Consumer
  subscribes_to "duck_topic"

  def process(message)
    File.open('log_consumer.txt', 'a') { |fo| fo.puts "DowncaserMessageReceived | MSG: #{message.value.downcase}".force_encoding("UTF-8") }
  end
end
