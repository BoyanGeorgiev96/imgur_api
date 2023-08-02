# frozen_string_literal: true


require_relative "account_responses/base_response"
require_relative "account_responses/block_status_response"
require_relative "account_responses/my_blocks_response"
require_relative "account_responses/my_images_response"
require_relative "account_responses/gallery_favorites_response"
require_relative "account_responses/favorites_response"
require_relative "account_responses/available_avatars_response"
require_relative "account_responses/avatar_response"
require_relative "account_responses/my_settings_response"

module ApiResponseData
  module AccountResponses
    include BaseResponse
    include BlockStatusResponse
    include MyBlocksResponse
    include MyImagesResponse
    include GalleryFavoritesResponse
    include FavoritesResponse
    include AvailableAvatarsResponse
    include AvatarResponse
    include MySettingsResponse
  end
end
