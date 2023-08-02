# frozen_string_literal: true

module Imgur
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    private

    ERROR_MESSAGES = {
      400 => "Your request was malformed.",
      401 => "You did not supply valid authentication credentials.",
      403 => "You are not allowed to perform that action.",
      404 => "No results were found for your request.",
      429 => "Your request exceeded the API rate limit.",
      500 => "We were unable to perform the request due to server-side problems.",
      503 => "You have been rate-limited for sending more than 20 requests per second."
    }.freeze

    def get_request(url, params: {}, headers: {})
      handle_response client.connection.get(url, params, headers)
    end

    def post_request(url, body: {}, headers: {})
      handle_response client.connection.post(url, body, headers)
    end

    def patch_request(url, body:, headers: {})
      handle_response client.connection.patch(url, body, headers)
    end

    def put_request(url, body:, headers: {})
      handle_response client.connection.put(url, body, headers)
    end

    def delete_request(url, params: {}, headers: {})
      handle_response client.connection.delete(url, params, headers)
    end

    def handle_response(response)
      error_message = ERROR_MESSAGES[response.status]
      raise Error, error_message if error_message

      response
    end
  end
end
