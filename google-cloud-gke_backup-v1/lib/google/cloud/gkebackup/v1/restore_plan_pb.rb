# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkebackup/v1/restore_plan.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkebackup/v1/restore_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gkebackup/v1/restore_plan.proto", :syntax => :proto3) do
    add_message "google.cloud.gkebackup.v1.RestorePlan" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :description, :string, 5
      optional :backup_plan, :string, 6
      optional :cluster, :string, 7
      optional :restore_config, :message, 8, "google.cloud.gkebackup.v1.RestoreConfig"
      map :labels, :string, :string, 9
      optional :etag, :string, 10
    end
  end
end

module Google
  module Cloud
    module GkeBackup
      module V1
        RestorePlan = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestorePlan").msgclass
      end
    end
  end
end