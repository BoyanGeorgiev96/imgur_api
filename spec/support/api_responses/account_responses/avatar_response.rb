# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module AvatarResponse
      def self.data
        {
          data: {
            avatar: "https://imgur.com/user/ghostinspector/avatar?maxwidth=290",
            avatar_name: "default/G"
          },
          success: true,
          status: 200
        }
      end
    end
  end
end
