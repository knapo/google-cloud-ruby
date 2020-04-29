# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/monitoring/v3/notification_service_pb"
require "google/monitoring/v3/notification_service_services_pb"
require "google/cloud/monitoring/v3/notification_channel_service"

class ::Google::Cloud::Monitoring::V3::NotificationChannelService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_notification_channel_descriptors
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    page_size = 42
    page_token = "hello world"

    list_notification_channel_descriptors_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_notification_channel_descriptors, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsRequest, request
      assert_equal "hello world", request.name
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_notification_channel_descriptors_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_notification_channel_descriptors({ name: name, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_notification_channel_descriptors name: name, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_notification_channel_descriptors ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsRequest.new(name: name, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_notification_channel_descriptors({ name: name, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_notification_channel_descriptors ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsRequest.new(name: name, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_notification_channel_descriptors_client_stub.call_rpc_count
    end
  end

  def test_get_notification_channel_descriptor
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::NotificationChannelDescriptor.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_notification_channel_descriptor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_notification_channel_descriptor, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::GetNotificationChannelDescriptorRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_notification_channel_descriptor_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_notification_channel_descriptor({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_notification_channel_descriptor name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_notification_channel_descriptor ::Google::Cloud::Monitoring::V3::GetNotificationChannelDescriptorRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_notification_channel_descriptor({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_notification_channel_descriptor ::Google::Cloud::Monitoring::V3::GetNotificationChannelDescriptorRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_notification_channel_descriptor_client_stub.call_rpc_count
    end
  end

  def test_list_notification_channels
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::ListNotificationChannelsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    filter = "hello world"
    order_by = "hello world"
    page_size = 42
    page_token = "hello world"

    list_notification_channels_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_notification_channels, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::ListNotificationChannelsRequest, request
      assert_equal "hello world", request.name
      assert_equal "hello world", request.filter
      assert_equal "hello world", request.order_by
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_notification_channels_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_notification_channels({ name: name, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_notification_channels name: name, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_notification_channels ::Google::Cloud::Monitoring::V3::ListNotificationChannelsRequest.new(name: name, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_notification_channels({ name: name, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_notification_channels ::Google::Cloud::Monitoring::V3::ListNotificationChannelsRequest.new(name: name, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_notification_channels_client_stub.call_rpc_count
    end
  end

  def test_get_notification_channel
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::NotificationChannel.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_notification_channel_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_notification_channel, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::GetNotificationChannelRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_notification_channel_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_notification_channel({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_notification_channel name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_notification_channel ::Google::Cloud::Monitoring::V3::GetNotificationChannelRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_notification_channel({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_notification_channel ::Google::Cloud::Monitoring::V3::GetNotificationChannelRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_notification_channel_client_stub.call_rpc_count
    end
  end

  def test_create_notification_channel
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::NotificationChannel.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    notification_channel = {}

    create_notification_channel_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_notification_channel, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::CreateNotificationChannelRequest, request
      assert_equal "hello world", request.name
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Monitoring::V3::NotificationChannel), request.notification_channel
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_notification_channel_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_notification_channel({ name: name, notification_channel: notification_channel }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_notification_channel name: name, notification_channel: notification_channel do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_notification_channel ::Google::Cloud::Monitoring::V3::CreateNotificationChannelRequest.new(name: name, notification_channel: notification_channel) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_notification_channel({ name: name, notification_channel: notification_channel }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_notification_channel ::Google::Cloud::Monitoring::V3::CreateNotificationChannelRequest.new(name: name, notification_channel: notification_channel), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_notification_channel_client_stub.call_rpc_count
    end
  end

  def test_update_notification_channel
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::NotificationChannel.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    notification_channel = {}

    update_notification_channel_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_notification_channel, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::UpdateNotificationChannelRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request.update_mask
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Monitoring::V3::NotificationChannel), request.notification_channel
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_notification_channel_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_notification_channel({ update_mask: update_mask, notification_channel: notification_channel }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_notification_channel update_mask: update_mask, notification_channel: notification_channel do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_notification_channel ::Google::Cloud::Monitoring::V3::UpdateNotificationChannelRequest.new(update_mask: update_mask, notification_channel: notification_channel) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_notification_channel({ update_mask: update_mask, notification_channel: notification_channel }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_notification_channel ::Google::Cloud::Monitoring::V3::UpdateNotificationChannelRequest.new(update_mask: update_mask, notification_channel: notification_channel), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_notification_channel_client_stub.call_rpc_count
    end
  end

  def test_delete_notification_channel
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_notification_channel_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_notification_channel, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::DeleteNotificationChannelRequest, request
      assert_equal "hello world", request.name
      assert_equal true, request.force
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_notification_channel_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_notification_channel({ name: name, force: force }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_notification_channel name: name, force: force do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_notification_channel ::Google::Cloud::Monitoring::V3::DeleteNotificationChannelRequest.new(name: name, force: force) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_notification_channel({ name: name, force: force }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_notification_channel ::Google::Cloud::Monitoring::V3::DeleteNotificationChannelRequest.new(name: name, force: force), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_notification_channel_client_stub.call_rpc_count
    end
  end

  def test_send_notification_channel_verification_code
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    send_notification_channel_verification_code_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :send_notification_channel_verification_code, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::SendNotificationChannelVerificationCodeRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, send_notification_channel_verification_code_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.send_notification_channel_verification_code({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.send_notification_channel_verification_code name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.send_notification_channel_verification_code ::Google::Cloud::Monitoring::V3::SendNotificationChannelVerificationCodeRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.send_notification_channel_verification_code({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.send_notification_channel_verification_code ::Google::Cloud::Monitoring::V3::SendNotificationChannelVerificationCodeRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, send_notification_channel_verification_code_client_stub.call_rpc_count
    end
  end

  def test_get_notification_channel_verification_code
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    expire_time = {}

    get_notification_channel_verification_code_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_notification_channel_verification_code, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeRequest, request
      assert_equal "hello world", request.name
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request.expire_time
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_notification_channel_verification_code_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_notification_channel_verification_code({ name: name, expire_time: expire_time }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_notification_channel_verification_code name: name, expire_time: expire_time do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_notification_channel_verification_code ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeRequest.new(name: name, expire_time: expire_time) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_notification_channel_verification_code({ name: name, expire_time: expire_time }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_notification_channel_verification_code ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeRequest.new(name: name, expire_time: expire_time), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_notification_channel_verification_code_client_stub.call_rpc_count
    end
  end

  def test_verify_notification_channel
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::NotificationChannel.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    code = "hello world"

    verify_notification_channel_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :verify_notification_channel, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::VerifyNotificationChannelRequest, request
      assert_equal "hello world", request.name
      assert_equal "hello world", request.code
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, verify_notification_channel_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.verify_notification_channel({ name: name, code: code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.verify_notification_channel name: name, code: code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.verify_notification_channel ::Google::Cloud::Monitoring::V3::VerifyNotificationChannelRequest.new(name: name, code: code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.verify_notification_channel({ name: name, code: code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.verify_notification_channel ::Google::Cloud::Monitoring::V3::VerifyNotificationChannelRequest.new(name: name, code: code), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, verify_notification_channel_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Monitoring::V3::NotificationChannelService::Client::Configuration, config
  end
end
