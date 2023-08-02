# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module BlockStatusResponse
      def self.data
        {
          data: {
            blocked: false
          }
        }
      end
    end
  end
end
