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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/data_catalog/v1/data_catalog"

class ::Google::Cloud::DataCatalog::V1::DataCatalog::ClientPathsTest < Minitest::Test
  def test_entry_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entry_path project: "value0", location: "value1", entry_group: "value2", entry: "value3"
      assert_equal "projects/value0/locations/value1/entryGroups/value2/entries/value3", path
    end
  end

  def test_entry_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entry_group_path project: "value0", location: "value1", entry_group: "value2"
      assert_equal "projects/value0/locations/value1/entryGroups/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_tag_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tag_path project: "value0", location: "value1", entry_group: "value2", entry: "value3", tag: "value4"
      assert_equal "projects/value0/locations/value1/entryGroups/value2/entries/value3/tags/value4", path
    end
  end

  def test_tag_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tag_template_path project: "value0", location: "value1", tag_template: "value2"
      assert_equal "projects/value0/locations/value1/tagTemplates/value2", path
    end
  end

  def test_tag_template_field_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::DataCatalog::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tag_template_field_path project: "value0", location: "value1", tag_template: "value2", field: "value3"
      assert_equal "projects/value0/locations/value1/tagTemplates/value2/fields/value3", path
    end
  end
end
