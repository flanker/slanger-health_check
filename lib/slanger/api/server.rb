require 'sinatra/base'

module Slanger
  module Api
    class Server < Sinatra::Base

      PATHS_WITHOUT_VALIDATION = ["/health-check"]

      get '/health-check' do
        status 200
      end

      def valid_request
        @valid_request ||=
          begin
            if PATHS_WITHOUT_VALIDATION.include?(request.path_info)
              true
            else
              request_body ||= request.body.read.tap{|s| s.force_encoding("utf-8")}
              RequestValidation.new(request_body, params, env["PATH_INFO"])
            end
          end
      end

    end
  end
end
