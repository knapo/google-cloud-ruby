# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/run/v2/service.proto for package 'google.cloud.run.v2'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/run/v2/service_pb'

module Google
  module Cloud
    module Run
      module V2
        module Services
          # Cloud Run Service Control Plane API
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.run.v2.Services'

            # Creates a new Service in a given project and location.
            rpc :CreateService, ::Google::Cloud::Run::V2::CreateServiceRequest, ::Google::Longrunning::Operation
            # Gets information about a Service.
            rpc :GetService, ::Google::Cloud::Run::V2::GetServiceRequest, ::Google::Cloud::Run::V2::Service
            # List Services.
            rpc :ListServices, ::Google::Cloud::Run::V2::ListServicesRequest, ::Google::Cloud::Run::V2::ListServicesResponse
            # Updates a Service.
            rpc :UpdateService, ::Google::Cloud::Run::V2::UpdateServiceRequest, ::Google::Longrunning::Operation
            # Deletes a Service.
            # This will cause the Service to stop serving traffic and will delete all
            # revisions.
            rpc :DeleteService, ::Google::Cloud::Run::V2::DeleteServiceRequest, ::Google::Longrunning::Operation
            # Get the IAM Access Control policy currently in effect for the given
            # Cloud Run Service. This result does not include any inherited policies.
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Sets the IAM Access control policy for the specified Service. Overwrites
            # any existing policy.
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns permissions that a caller has on the specified Project.
            #
            # There are no permissions required for making this API call.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end