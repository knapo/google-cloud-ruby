# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datapolicies/v1/datapolicy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/datapolicies/v1/datapolicy.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.datapolicies.v1.CreateDataPolicyRequest" do
      optional :parent, :string, 1
      optional :data_policy, :message, 2, "google.cloud.bigquery.datapolicies.v1.DataPolicy"
    end
    add_message "google.cloud.bigquery.datapolicies.v1.UpdateDataPolicyRequest" do
      optional :data_policy, :message, 1, "google.cloud.bigquery.datapolicies.v1.DataPolicy"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.bigquery.datapolicies.v1.RenameDataPolicyRequest" do
      optional :name, :string, 1
      optional :new_data_policy_id, :string, 2
    end
    add_message "google.cloud.bigquery.datapolicies.v1.DeleteDataPolicyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datapolicies.v1.GetDataPolicyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datapolicies.v1.ListDataPoliciesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.bigquery.datapolicies.v1.ListDataPoliciesResponse" do
      repeated :data_policies, :message, 1, "google.cloud.bigquery.datapolicies.v1.DataPolicy"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.datapolicies.v1.DataPolicy" do
      optional :name, :string, 1
      optional :data_policy_type, :enum, 2, "google.cloud.bigquery.datapolicies.v1.DataPolicy.DataPolicyType"
      optional :data_policy_id, :string, 3
      oneof :matching_label do
        optional :policy_tag, :string, 4
      end
      oneof :policy do
        optional :data_masking_policy, :message, 5, "google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy"
      end
    end
    add_enum "google.cloud.bigquery.datapolicies.v1.DataPolicy.DataPolicyType" do
      value :DATA_POLICY_TYPE_UNSPECIFIED, 0
      value :COLUMN_LEVEL_SECURITY_POLICY, 3
      value :DATA_MASKING_POLICY, 2
    end
    add_message "google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy" do
      oneof :masking_expression do
        optional :predefined_expression, :enum, 1, "google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy.PredefinedExpression"
      end
    end
    add_enum "google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy.PredefinedExpression" do
      value :PREDEFINED_EXPRESSION_UNSPECIFIED, 0
      value :SHA256, 3
      value :ALWAYS_NULL, 5
      value :DEFAULT_MASKING_VALUE, 7
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module DataPolicies
        module V1
          CreateDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.CreateDataPolicyRequest").msgclass
          UpdateDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.UpdateDataPolicyRequest").msgclass
          RenameDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.RenameDataPolicyRequest").msgclass
          DeleteDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DeleteDataPolicyRequest").msgclass
          GetDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.GetDataPolicyRequest").msgclass
          ListDataPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.ListDataPoliciesRequest").msgclass
          ListDataPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.ListDataPoliciesResponse").msgclass
          DataPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataPolicy").msgclass
          DataPolicy::DataPolicyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataPolicy.DataPolicyType").enummodule
          DataMaskingPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy").msgclass
          DataMaskingPolicy::PredefinedExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy.PredefinedExpression").enummodule
        end
      end
    end
  end
end
