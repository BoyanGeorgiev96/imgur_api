# frozen_string_literal: true

require_relative "../../support/api_responses/account_responses"
require_relative "custom_response_context"
require "pry"

RSpec.describe Imgur::AccountResource do
  let(:account_resource) { Imgur::AccountResource.new(double("client")) }

  context "when testing base function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::BaseResponse.data

    it "returns an Account object with correct attributes" do
      account = account_resource.base(username: "ghostinspector")
      data = account.data

      expect(account).to be_instance_of(Imgur::Account)
      expect(data.id).to eq(48437714)
      expect(data.url).to eq("ghostinspector")
      expect(data.bio).to be_nil
      expect(data.avatar).to eq(nil)
      expect(data.avatar_name).to eq("default/B")
      expect(data.reputation).to eq(0)
      expect(data.reputation_name).to eq("Neutral")
      expect(data.created).to eq(1481839668)
      expect(data.pro_expiration).to be_falsey
      expect(data.user_follow.status).to be_falsey
      expect(data.is_blocked).to be_falsey
    end
  end

  context "when testing block_status function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::BlockStatusResponse.data

    it "returns an Account object with correct attributes for block_status" do
      block_status_account = account_resource.block_status(username: "ghostinspector")
      data = block_status_account.data

      expect(block_status_account).to be_instance_of(Imgur::Account)
      expect(data.blocked).to be_falsey
    end
  end

  context "when testing my_blocks function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::MyBlocksResponse.data

    it "returns an Account object with correct attributes for my_blocks" do
      blocks_account = account_resource.my_blocks
      data = blocks_account.data

      expect(blocks_account).to be_instance_of(Imgur::Account)
      expect(data.items).to eq([])
      expect(data.next).to be_nil
    end
  end

  context "when testing create_block function" do
    include_context "with custom response_body", 201, {}

    it "returns an Account object with correct attributes for create_block" do
      create_block_account = account_resource.create_block(username: "ghostinspector")
      expect(create_block_account).to be_instance_of(Imgur::Account)
      expect(create_block_account.status).to be(201)
      expect(create_block_account.body).to be_empty
    end
  end

  context "when testing delete_block function" do
    include_context "with custom response_body", 204, {}

    it "returns an Account object with correct attributes for delete_block" do
      create_block_account = account_resource.delete_block(username: "ghostinspector")
      expect(create_block_account).to be_instance_of(Imgur::Account)
      expect(create_block_account.status).to be(204)
      expect(create_block_account.body).to be_empty
    end
  end

  context "when testing my_images function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::MyImagesResponse.data

    it "returns an Account object with correct attributes for my_images" do
      images_account = account_resource.my_images
      expect(images_account).to be_instance_of(Imgur::Account)
      expect(images_account.data).to eq([])
      expect(images_account.success).to be_truthy
      expect(images_account.status).to be(200)
    end
  end

  context "when testing my_images function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::GalleryFavoritesResponse.data

    it "returns an Account object with correct attributes for gallery_favorites" do
      gallery_favorites_account = account_resource.gallery_favorites(username: "ghostinspector")
      data = gallery_favorites_account.data
      expect(gallery_favorites_account).to be_instance_of(Imgur::Account)
      expect(data.length).to eq(1)

      gallery_item = data.first
      expect(gallery_item.id).to eq("CMGQM")
      expect(gallery_item.title).to eq("Breakfast Grilled Cheese ")
      expect(gallery_item.cover).to eq("a3quzFb")
      expect(gallery_item.account_url).to eq("foldednapkin")
      expect(gallery_item.link).to eq("https://imgur.com/a/CMGQM")
      expect(gallery_item.images.size).to be(3)
      expect(gallery_item.images.map(&:id)).to eq(%w[R3dfv1H kGH9iw3 fIzQHfw])
    end
  end

  context "when testing favorites function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::FavoritesResponse.data

    it "returns an Account object with correct attributes for favorites" do
      favorites_account = account_resource.favorites(username: "ghostinspector")
      data = favorites_account.data
      favorite = data.first
      expect(favorites_account).to be_instance_of(Imgur::Account)
      expect(favorite.id).to eq("CMGQM")
      expect(favorite.title).to eq("Breakfast Grilled Cheese ")
      expect(favorite.cover).to eq("a3quzFb")
      expect(favorite.account_url).to eq("foldednapkin")
      expect(favorite.link).to eq("https://imgur.com/gallery/CMGQM")
    end
  end

  context "when testing submissions function" do
    # TODO: change this to a generic response?
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::MyImagesResponse.data

    it "returns an Account object with correct attributes for submissions" do
      submissions_account = account_resource.submissions(username: "ghostinspector")
      expect(submissions_account.data).to eq([])
      expect(submissions_account.success).to be_truthy
      expect(submissions_account.status).to be(200)
    end
  end

  context "when testing available_avatars function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::AvatarResponse.data

    it "returns an Account object with correct attributes for submissions" do
      avatar_account = account_resource.avatar(username: "ghostinspector")
      data = avatar_account.data
      expect(data.avatar).to eq("https://imgur.com/user/ghostinspector/avatar?maxwidth=290")
      expect(data.avatar_name).to eq("default/G")
      expect(avatar_account.success).to be_truthy
      expect(avatar_account.status).to be(200)
    end
  end

  context "when testing my_settings function" do
    include_context "with custom response_body", 200, ApiResponseData::AccountResponses::MySettingsResponse.data

    it "returns an Account object with correct attributes for submissions" do
      avatar_account = account_resource.avatar(username: "ghostinspector")
      data = avatar_account.data
      expect(data.account_url).to eq("ghostinspector")
      expect(data.email).to eq("ghostinspector@example.com")
      expect(data.album_privacy).to eq("public")
      expect(data.first_party).to be_truthy
      expect(avatar_account.success).to be_truthy
      expect(avatar_account.status).to be(200)
    end
  end
end
