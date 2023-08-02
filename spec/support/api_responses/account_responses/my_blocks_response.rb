# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module MyBlocksResponse
      def self.data
        {
          "status" => 200,
          "success" => true,
          "data" => {
            "items" => [],
            "next" => nil
          }
        }
      end
    end
  end
end
