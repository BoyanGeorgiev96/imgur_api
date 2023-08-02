# frozen_string_literal: true

module ApiResponseData
  module AccountResponses
    module AvailableAvatarsResponse
      def self.data
        {
          data: {
            available_avatars: [
              {
                name: "flavor/3D",
                location: "https://i.imgur.com/QmC4NzH_d.png?maxwidth=290&fidelity=grand"
              },
              {
                name: "flavor/avocado",
                location: "https://i.imgur.com/f8wFE2Q_d.png?maxwidth=290&fidelity=grand"
              },
              {
                name: "flavor/banana",
                location: "https://i.imgur.com/6mS1oqI_d.png?maxwidth=290&fidelity=grand"
              }
            ],
            available_avatars_count: 3,
            avatars_are_default: false
          },
          success: true,
          status: 200
        }
      end
    end
  end
end
