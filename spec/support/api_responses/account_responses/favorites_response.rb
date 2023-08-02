# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module FavoritesResponse
      def self.data
        {
          status: 200,
          success: true,
          data: [
            {
              id: "CMGQM",
              title: "Breakfast Grilled Cheese ",
              cover: "a3quzFb",
              account_url: "foldednapkin",
              link: "https://imgur.com/gallery/CMGQM"
            }
          ]
        }
      end
    end
  end
end
