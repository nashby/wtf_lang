#encoding: utf-8

require 'net/http'
require 'json'
require 'cgi'
require "wtf_lang/language"

module WtfLang
  class API

    BASE_URL = "http://ws.detectlanguage.com/0.2/detect"

    class << self
      def get_url(text)
        "#{BASE_URL}?key=#{key}&q=#{CGI.escape(text)}"
      end

      def send(text)
        Net::HTTP.get(URI.parse(get_url(text)))
      end

      def parse(response)
        JSON.parse(response)
      end

      def detect(text)
        response = send(text.to_s)
        if response_data = parse(response)["data"]["detections"].first
          Language.new(response_data["language"], response_data["confidence"])
        end
      end

      def key
        @@key
      end

      def key=(value)
        @@key = value
      end
    end
  end
end
