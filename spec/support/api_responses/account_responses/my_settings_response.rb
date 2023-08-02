# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module MySettingsResponse
      def self.data
        {
          data: {
            account_url: "ghostinspector",
            email: "ghostinspector@example.com",
            album_privacy: "public",
            first_party: true
          },
          success: true,
          status: 200
        }
      end
    end
  end
end
