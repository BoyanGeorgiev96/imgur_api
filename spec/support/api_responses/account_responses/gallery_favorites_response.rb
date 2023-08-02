# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module GalleryFavoritesResponse
      def self.data
        {
          data: [
            {
              id: "CMGQM",
              title: "Breakfast Grilled Cheese ",
              cover: "a3quzFb",
              account_url: "foldednapkin",
              link: "https://imgur.com/a/CMGQM",
              images: [
                {
                  id: "R3dfv1H",
                  description: "My son likes his well done. In my opinion it's way better when its running,and served on a plate with a knife and fork.",
                  type: "image/jpeg",
                  link: "https://i.imgur.com/R3dfv1H.jpg",
                },
                {
                  id: "kGH9iw3",
                  description: "First cut a whole in slices of bread with the edge of a glass (champagne flutes work best). Heat a pan on medium low heat. Too hot and it'll burn the bread before the sandwich is done. Butter a pan, and place an egg in each slice.",
                  type: "image/jpeg",
                  link: "https://i.imgur.com/kGH9iw3.jpg",
                },
                {
                  id: "fIzQHfw",
                  description: "Place mustard on one side, and pickled jalapeños on the other (trust me it's a must).",
                  type: "image/jpeg",
                  link: "https://i.imgur.com/fIzQHfw.jpg",
                }
              ]
            }
          ],
          success: true,
          status: 200
      }
      end
    end
  end
end
