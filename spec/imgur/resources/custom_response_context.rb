# frozen_string_literal: true

RSpec.shared_context "with custom response_body" do |response_status, response_data|
  before do
    allow_any_instance_of(Imgur::AccountResource).to receive(:get_request)
      .and_return(OpenStruct.new(status: response_status, body: response_data))

    allow_any_instance_of(Imgur::AccountResource).to receive(:post_request)
      .and_return(OpenStruct.new(status: response_status, body: response_data))

    allow_any_instance_of(Imgur::AccountResource).to receive(:delete_request)
      .and_return(OpenStruct.new(status: response_status, body: response_data))
  end
end
