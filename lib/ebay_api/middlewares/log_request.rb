class EbayAPI
  class LogRequest
    def initialize(app)
      @app = app
    end

    def call(env)
      log_request(env)
      @app.call(env).tap { |output| log_response(output) }
    end

    private

    def logger
      @logger ||= EbayAPI.logger
    end

    def log_info(key, data = nil)
      logger.info "[EbayAPI] | #{format('%9s', key)} | #{data}"
    end

    APIS = %w(PUT DELETE POST)
    def log_api_request_log(env)
      return unless APIS.include?(env["REQUEST_METHOD"])

      Thread.current[:request_callname] = env["REQUEST_METHOD"]
      Thread.current[:request_url] = env["PATH_INFO"]
      Thread.current[:request_headers] = env["HTTP_Variables"]
      Thread.current[:request_body] = env["rack.input"]
    end

    def log_api_response_log(output)
      return unless Thread.current[:request_callname]

      status, headers, body = output
      Thread.current[:response_headers] = headers
      Thread.current[:response_body] = body
    end

    def log_request(env)
      log_api_request_log(env)
      return unless logger
      log_info "REQUEST:"
      log_info "Url",     env["PATH_INFO"]
      log_info "Method",  env["REQUEST_METHOD"]
      log_info "Headers", env["HTTP_Variables"]
      log_info "Body",    env["rack.input"]
    end

    def log_response(output)
      log_api_response_log(output)
      return unless logger
      status, headers, body = output
      log_info "RESPONSE:"
      log_info "Status",  status
      log_info "Headers", headers
      log_info "Body",    body
    end
  end


end
