#encoding: utf-8

require 'net/http'
require 'json'
require 'cgi'
require "wtf_lang/language"

module WtfLang
  class API
  
    BASE_URL = "http://www.google.com/uds/GlangDetect"
    VERSION = "?v=1.0"
    
    class << self
      def get_url(text)
        BASE_URL+VERSION+"&q="+CGI.escape(text)
      end
      
      def send(text)
        Net::HTTP.get(URI.parse(get_url(text)))
      end
      
      def parse(response)
        JSON.parse(response)
      end
      
      def detect(text)
        response = send(text)
        response_data = parse(response)["responseData"]
        Language.new(response_data["language"], response_data["confidence"])
      end
      
    end
  end
end