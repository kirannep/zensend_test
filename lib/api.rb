module Api

    def self.sms_request(params)
        client = ZenSend::Client.new("3JFtqHAaOY0wRp5xDLtGJw")
        begin
        result = client.send_sms(
            originator: params,
            # Add your number here to send a message to yourself
            # The number should be in international format.
            # For example GB numbers will be 447400123456
            numbers: [params],
            body: "Hello from Kiran, Enter 1327 to verify your phone number",
            originator_type: :msisdn
        )
        puts result.inspect
        rescue ZenSend::ZenSendException => e
        puts "ZenSendException: #{e.parameter} => #{e.failcode}"
        end
    end

end