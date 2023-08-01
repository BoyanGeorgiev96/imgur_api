# frozen_string_literal: true

module Imgur
  class AccountResource < Resource
    def base(username:)
      Account.new get_request("account/#{username}").body
    end

    def block_status
      Account.new get_request("https://api.imgur.com/account/v1/#{username}/block").body
    end

    def my_blocks
      Account.new get_request("account/me/block").body
    end

    def create_block(username:)
      Account.new post_request("https://api.imgur.com/account/v1/#{username}/block").body
    end

    def delete_block(username:)
      Account.new delete_request("https://api.imgur.com/account/v1/#{username}/block").body
    end

    def my_images
      Account.new get_request("account/me/images").body
    end

    def gallery_favorites(username:, page: nil, favorites_sort: nil)
      Account.new get_request("account/#{username}/gallery_favorites/#{page}/#{favorites_sort}").body
    end

    def favorites(username:, page: nil, favorites_sort: nil)
      Account.new get_request("account/#{username}/favorites/#{page}/#{favorites_sort}").body
    end

    def submissions(username:, page: nil)
      Account.new get_request("account/#{username}/submissions/#{page}").body
    end

    def available_avatars(username:)
      Account.new get_request("account/#{username}/available_avatars").body
    end

    def avatar(username:)
      Account.new get_request("account/#{username}/avatar").body
    end

    def my_settings
      Account.new get_request("account/me/settings").body
    end

    # TODO: test this
    def change_settings(username:, **attributes)
      Account.new put_request("account/#{username}/settings", body: attributes).body
    end

    def gallery_profile(username:)
      Account.new get_request("account/#{username}/settings").body
    end

    def verify_user_email(username:)
      Account.new get_request("account/#{username}/verifyemail").body
    end

    def send_verification_email(username:)
      Account.new post_request("account/#{username}/verifyemail").body
    end

    def albums(username:, page: nil)
      Account.new get_request("account/#{username}/albums/#{page}").body
    end

    def album(username:, album_hash:)
      Account.new get_request("account/#{username}/album/#{album_hash}").body
    end

    def album_ids(username:, page:)
      Account.new get_request("account/#{username}/albums/ids/#{page}").body
    end

    def album_count(username:)
      Account.new get_request("account/#{username}/albums/count").body
    end

    def delete_album(username:, album_hash:)
      Account.new delete_request("account/#{username}/album/#{album_hash}").body
    end

    def comments(username:, comment_sort:, page:)
      Account.new get_request("account/#{username}/comments/#{comment_sort}/#{page}").body
    end

    def comment(username:, comment_id:)
      Account.new get_request("account/#{username}/comment/#{comment_id}").body
    end

    def comment_ids(username:, sort:, page:)
      Account.new get_request("account/#{username}/comments/ids/#{sort}/#{page}").body
    end

    def comment_count(username:)
      Account.new get_request("account/#{username}/comments/count").body
    end

    def delete_comment(username:, comment_id:)
      Account.new delete_request("account/#{username}/comment/#{comment_id}").body
    end

    def images(username:, page: nil)
      Account.new get_request("account/#{username}/images/#{page}").body
    end

    def image(username:, image_id:)
      Account.new get_request("account/#{username}/image/#{image_id}").body
    end

    def image_ids(username:, page: nil)
      Account.new get_request("account/#{username}/images/ids/#{page}").body
    end

    def image_count(username:)
      Account.new get_request("account/#{username}/images/count").body
    end

    def delete_image(username:, delete_hash:)
      Account.new delete_request("account/#{username}/image/#{delete_hash}").body
    end

    def replies(username:)
      Account.new get_request("account/#{username}/notifications/replies").body
    end

    def follow_tag(tag_name:)
      Account.new post_request("account/me/follow/tag/#{tag_name}").body
    end

    def unfollow_tag(tag_name:)
      Account.new delete_request("account/me/follow/tag/#{tag_name}").body
    end

    # TODO: CHECK HOW TO DO THIS
    # def delete_account(hostname:, client_id:)
    #   Account.new post_request()
    # end
  end
end
