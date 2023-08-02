# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module BaseResponse
      def self.data
        {
          "data" => OpenStruct.new(
            "id" => 48437714,
            "url" => "ghostinspector",
            "bio" => nil,
            "avatar" => nil,
            "avatar_name" => "default/B",
            "reputation" => 0,
            "reputation_name" => "Neutral",
            "created" => 1481839668,
            "pro_expiration" => false,
            "user_follow" => OpenStruct.new("status" => false),
            "is_blocked" => false
          ),
          "success" => true,
          "status" => 200
        }
      end
    end
  end
end
