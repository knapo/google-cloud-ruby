# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module Lineage
        module V1
          # A process is the definition of a data transformation operation.
          # @!attribute [rw] name
          #   @return [::String]
          #     Immutable. The resource name of the lineage process. Format:
          #     `projects/{project}/locations/{location}/processes/{process}`.
          #     Can be specified or auto-assigned.
          #     \\{process} must be not longer than 200 characters and only
          #     contain characters in a set: `a-zA-Z0-9_-:.`
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Optional. A human-readable name you can set to display in a user interface.
          #     Must be not longer than 200 characters and only contain UTF-8 letters
          #     or numbers, spaces or characters like `_-:&.`
          # @!attribute [rw] attributes
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
          #     Optional. The attributes of the process. Can be anything, for example,
          #     "author". Up to 100 attributes are allowed.
          # @!attribute [rw] origin
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Origin]
          #     Optional. The origin of this process and its runs and lineage events.
          class Process
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::Value]
            class AttributesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # A lineage run represents an execution of a process that creates
          # lineage events.
          # @!attribute [rw] name
          #   @return [::String]
          #     Immutable. The resource name of the run. Format:
          #     `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
          #     Can be specified or auto-assigned.
          #     \\{run} must be not longer than 200 characters and only
          #     contain characters in a set: `a-zA-Z0-9_-:.`
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Optional. A human-readable name you can set to display in a user interface.
          #     Must be not longer than 1024 characters and only contain UTF-8 letters
          #     or numbers, spaces or characters like `_-:&.`
          # @!attribute [rw] attributes
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
          #     Optional. The attributes of the run. Can be anything, for example, a string
          #     with an SQL request. Up to 100 attributes are allowed.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Required. The timestamp of the start of the run.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. The timestamp of the end of the run.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Run::State]
          #     Required. The state of the run.
          class Run
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::Value]
            class AttributesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The current state of the run.
            module State
              # The state is unknown. The true state may be any of the below or a
              # different state that is not supported here explicitly.
              UNKNOWN = 0

              # The run is still executing.
              STARTED = 1

              # The run completed.
              COMPLETED = 2

              # The run failed.
              FAILED = 3

              # The run aborted.
              ABORTED = 4
            end
          end

          # A lineage event represents an operation on assets. Within the operation, the
          # data flows from the source to the target defined in the links field.
          # @!attribute [rw] name
          #   @return [::String]
          #     Immutable. The resource name of the lineage event.
          #     Format:
          #     `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`.
          #     Can be specified or auto-assigned.
          #     \\{lineage_event} must be not longer than 200 characters and only
          #     contain characters in a set: `a-zA-Z0-9_-:.`
          # @!attribute [rw] links
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::EventLink>]
          #     Optional. List of source-target pairs. Can't contain more than 100 tuples.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. The beginning of the transformation which resulted in this
          #     lineage event. For streaming scenarios, it should be the beginning of the
          #     period from which the lineage is being reported.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. The end of the transformation which resulted in this lineage
          #     event.  For streaming scenarios, it should be the end of the period from
          #     which the lineage is being reported.
          class LineageEvent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A lineage between source and target entities.
          # @!attribute [rw] source
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     Required. Reference to the source entity
          # @!attribute [rw] target
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     Required. Reference to the target entity
          class EventLink
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The soft reference to everything you can attach a lineage event to.
          # @!attribute [rw] fully_qualified_name
          #   @return [::String]
          #     Required. Fully Qualified Name of the entity. Useful for referencing
          #     entities that aren't represented as GCP resources, for example, tables in
          #     Dataproc Metastore API.
          #
          #     Examples:
          #
          #       * `bigquery:dataset.project_id.dataset_id`
          #       * `bigquery:table.project_id.dataset_id.table_id`
          #       * `pubsub:project_id.topic_id`
          #       * `dataproc_metastore:projectId.locationId.instanceId.databaseId.tableId`
          class EntityReference
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata describing the operation.
          # @!attribute [r] state
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::OperationMetadata::State]
          #     Output only. The current operation state.
          # @!attribute [r] operation_type
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::OperationMetadata::Type]
          #     Output only. The type of the operation being performed.
          # @!attribute [r] resource
          #   @return [::String]
          #     Output only. The [relative name]
          #     (https://cloud.google.com//apis/design/resource_names#relative_resource_name)
          #     of the resource being operated on.
          # @!attribute [r] resource_uuid
          #   @return [::String]
          #     Output only. The UUID of the resource being operated on.
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp of the operation submission to the server.
          # @!attribute [r] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp of the operation termination, regardless of its
          #     success. This field is unset if the operation is still ongoing.
          class OperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # An enum with the state of the operation.
            module State
              # Unused.
              STATE_UNSPECIFIED = 0

              # The operation has been created but is not yet started.
              PENDING = 1

              # The operation is underway.
              RUNNING = 2

              # The operation completed successfully.
              SUCCEEDED = 3

              # The operation is no longer running and did not succeed.
              FAILED = 4
            end

            # Type of the long running operation.
            module Type
              # Unused.
              TYPE_UNSPECIFIED = 0

              # The resource deletion operation.
              DELETE = 1
            end
          end

          # Request message for
          # [CreateProcess][google.cloud.datacatalog.lineage.v1.CreateProcess].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the project and its location that should own the
          #     process.
          # @!attribute [rw] process
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Process]
          #     Required. The process to create.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     A unique identifier for this request. Restricted to 36 ASCII characters.
          #     A random UUID is recommended. This request is idempotent only if a
          #     `request_id` is provided.
          class CreateProcessRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [UpdateProcess][google.cloud.datacatalog.lineage.v1.UpdateProcess].
          # @!attribute [rw] process
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Process]
          #     Required. The lineage process to update.
          #
          #     The process's `name` field is used to identify the process to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The list of fields to update. Currently not used. The whole message is
          #     updated.
          # @!attribute [rw] allow_missing
          #   @return [::Boolean]
          #     If set to true and the process is not found, the request inserts it.
          class UpdateProcessRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [GetProcess][google.cloud.datacatalog.lineage.v1.GetProcess].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the process to get.
          class GetProcessRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [ListProcesses][google.cloud.datacatalog.lineage.v1.ListProcesses].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the project and its location that owns this
          #     collection of processes.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of processes to return. The service may return
          #     fewer than this value. If unspecified, at most 50 processes are
          #     returned. The maximum value is 100; values greater than 100 are cut to
          #     100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The page token received from a previous `ListProcesses` call. Specify
          #     it to get the next page.
          #
          #     When paginating, all other parameters specified in this call must
          #     match the parameters of the call that provided the page token.
          class ListProcessesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for
          # [ListProcesses][google.cloud.datacatalog.lineage.v1.ListProcesses].
          # @!attribute [rw] processes
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::Process>]
          #     The processes from the specified project and location.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The token to specify as `page_token` in the next call to get the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListProcessesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [DeleteProcess][google.cloud.datacatalog.lineage.v1.DeleteProcess].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the process to delete.
          # @!attribute [rw] allow_missing
          #   @return [::Boolean]
          #     If set to true and the process is not found, the request
          #     succeeds but the server doesn't perform any actions.
          class DeleteProcessRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [CreateRun][google.cloud.datacatalog.lineage.v1.CreateRun].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the process that should own the run.
          # @!attribute [rw] run
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Run]
          #     Required. The run to create.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     A unique identifier for this request. Restricted to 36 ASCII characters.
          #     A random UUID is recommended. This request is idempotent only if a
          #     `request_id` is provided.
          class CreateRunRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [UpdateRun][google.cloud.datacatalog.lineage.v1.UpdateRun].
          # @!attribute [rw] run
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Run]
          #     Required. The lineage run to update.
          #
          #     The run's `name` field is used to identify the run to update.
          #
          #     Format:
          #     `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The list of fields to update. Currently not used. The whole message is
          #     updated.
          class UpdateRunRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [GetRun][google.cloud.datacatalog.lineage.v1.GetRun].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the run to get.
          class GetRunRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [ListRuns][google.cloud.datacatalog.lineage.v1.ListRuns].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of process that owns this collection of runs.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of runs to return. The service may return
          #     fewer than this value. If unspecified, at most 50 runs are
          #     returned. The maximum value is 100; values greater than 100 are cut to
          #     100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The page token received from a previous `ListRuns` call. Specify
          #     it to get the next page.
          #
          #     When paginating, all other parameters specified in this call must
          #     match the parameters of the call that provided the page token.
          class ListRunsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for
          # [ListRuns][google.cloud.datacatalog.lineage.v1.ListRuns].
          # @!attribute [rw] runs
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::Run>]
          #     The runs from the specified project and location.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The token to specify as `page_token` in the next call to get the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListRunsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [DeleteRun][google.cloud.datacatalog.lineage.v1.DeleteRun].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the run to delete.
          # @!attribute [rw] allow_missing
          #   @return [::Boolean]
          #     If set to true and the run is not found, the request
          #     succeeds but the server doesn't perform any actions.
          class DeleteRunRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [CreateLineageEvent][google.cloud.datacatalog.lineage.v1.CreateLineageEvent].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the run that should own the lineage event.
          # @!attribute [rw] lineage_event
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::LineageEvent]
          #     Required. The lineage event to create.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     A unique identifier for this request. Restricted to 36 ASCII characters.
          #     A random UUID is recommended. This request is idempotent only if a
          #     `request_id` is provided.
          class CreateLineageEventRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [GetLineageEvent][google.cloud.datacatalog.lineage.v1.GetLineageEvent].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the lineage event to get.
          class GetLineageEventRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [ListLineageEvents][google.cloud.datacatalog.lineage.v1.ListLineageEvents].
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the run that owns the collection of lineage events to
          #     get.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of lineage events to return.
          #
          #     The service may return fewer events than this value.
          #     If unspecified, at most 50 events are returned. The maximum value is 100;
          #     values greater than 100 are cut to 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The page token received from a previous `ListLineageEvents` call. Specify
          #     it to get the next page.
          #
          #     When paginating, all other parameters specified in this call must
          #     match the parameters of the call that provided the page token.
          class ListLineageEventsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for
          # [ListLineageEvents][google.cloud.datacatalog.lineage.v1.ListLineageEvents].
          # @!attribute [rw] lineage_events
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::LineageEvent>]
          #     Lineage events from the specified project and location.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The token to specify as `page_token` in the next call to get the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListLineageEventsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # [DeleteLineageEvent][google.cloud.datacatalog.lineage.v1.DeleteLineageEvent].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the lineage event to delete.
          # @!attribute [rw] allow_missing
          #   @return [::Boolean]
          #     If set to true and the lineage event is not found, the request
          #     succeeds but the server doesn't perform any actions.
          class DeleteLineageEventRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # {::Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#search_links SearchLinks}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project and location you want search in.
          # @!attribute [rw] source
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     Optional. Send asset information in the **source** field to retrieve all
          #     links that lead from the specified asset to downstream assets.
          # @!attribute [rw] target
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     Optional. Send asset information in the **target** field to retrieve all
          #     links that lead from upstream assets to the specified asset.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of links to return in a single page of the
          #     response. A page may contain fewer links than this value. If unspecified,
          #     at most 10 links are returned.
          #
          #     Maximum value is 100; values greater than 100 are reduced to 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. The page token received from a previous `SearchLinksRequest`
          #     call. Use it to get the next page.
          #
          #     When requesting subsequent pages of a response, remember that
          #     all parameters must match the values you provided
          #     in the original request.
          class SearchLinksRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for
          # {::Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#search_links SearchLinks}.
          # @!attribute [rw] links
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::Link>]
          #     The list of links for a given asset. Can be empty if the asset has no
          #     relations of requested type (source or target).
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The token to specify as `page_token` in the subsequent call to get the next
          #     page. Omitted if there are no more pages in the response.
          class SearchLinksResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Links represent the data flow between **source** (upstream)
          # and **target** (downstream) assets in transformation pipelines.
          #
          # Links are created when LineageEvents record data transformation between
          # related assets.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Immutable. The name of the link. Format:
          #     `projects/{project}/locations/{location}/links/{link}`.
          # @!attribute [rw] source
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     The pointer to the entity that is the **source** of this link.
          # @!attribute [rw] target
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::EntityReference]
          #     The pointer to the entity that is the **target** of this link.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The start of the first event establishing this link.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The end of the last event establishing this link.
          class Link
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for
          # {::Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#batch_search_link_processes BatchSearchLinkProcesses}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project and location where you want to search.
          # @!attribute [rw] links
          #   @return [::Array<::String>]
          #     Required. An array of links to check for their associated LineageProcesses.
          #
          #     The maximum number of items in this array is 100.
          #     If the request contains more than 100 links, it returns the
          #     `INVALID_ARGUMENT` error.
          #
          #     Format: `projects/{project}/locations/{location}/links/{link}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of processes to return in a single page of the response.
          #     A page may contain fewer results than this value.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The page token received from a previous `BatchSearchLinkProcesses` call.
          #     Use it to get the next page.
          #
          #     When requesting subsequent pages of a response, remember that
          #     all parameters must match the values you provided
          #     in the original request.
          class BatchSearchLinkProcessesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for
          # {::Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#batch_search_link_processes BatchSearchLinkProcesses}.
          # @!attribute [rw] process_links
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::ProcessLinks>]
          #     An array of processes associated with the specified links.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The token to specify as `page_token` in the subsequent call to get the next
          #     page. Omitted if there are no more pages in the response.
          class BatchSearchLinkProcessesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Links associated with a specific process.
          # @!attribute [rw] process
          #   @return [::String]
          #     The process name in the format of
          #     `projects/{project}/locations/{location}/processes/{process}`.
          # @!attribute [rw] links
          #   @return [::Array<::Google::Cloud::DataCatalog::Lineage::V1::ProcessLinkInfo>]
          #     An array containing link details objects of the links provided in
          #     the original request.
          #
          #     A single process can result in creating multiple links.
          #     If any of the links you provide in the request are created by
          #     the same process, they all are included in this array.
          class ProcessLinks
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Link details.
          # @!attribute [rw] link
          #   @return [::String]
          #     The name of the link in the format of
          #     `projects/{project}/locations/{location}/links/{link}`.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The start of the first event establishing this link-process tuple.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The end of the last event establishing this link-process tuple.
          class ProcessLinkInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Origin of a process.
          # @!attribute [rw] source_type
          #   @return [::Google::Cloud::DataCatalog::Lineage::V1::Origin::SourceType]
          #     Type of the source.
          # @!attribute [rw] name
          #   @return [::String]
          #     If the source_type isn't CUSTOM, the value of this field should be a GCP
          #     resource name of the system, which reports lineage. The project and
          #     location parts of the resource name must match the project and location of
          #     the lineage resource being created. Examples:
          #
          #     - `{source_type: COMPOSER, name:
          #       "projects/foo/locations/us/environments/bar"}`
          #     - `{source_type: BIGQUERY, name: "projects/foo/locations/eu"}`
          #     - `{source_type: CUSTOM,   name: "myCustomIntegration"}`
          class Origin
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Type of the source of a process.
            module SourceType
              # Source is Unspecified
              SOURCE_TYPE_UNSPECIFIED = 0

              # A custom source
              CUSTOM = 1

              # BigQuery
              BIGQUERY = 2

              # Data Fusion
              DATA_FUSION = 3

              # Composer
              COMPOSER = 4

              # Looker Studio
              LOOKER_STUDIO = 5
            end
          end
        end
      end
    end
  end
end
