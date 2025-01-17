# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/job_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/batch_prediction_job_pb'
require 'google/cloud/aiplatform/v1/custom_job_pb'
require 'google/cloud/aiplatform/v1/data_labeling_job_pb'
require 'google/cloud/aiplatform/v1/hyperparameter_tuning_job_pb'
require 'google/cloud/aiplatform/v1/model_deployment_monitoring_job_pb'
require 'google/cloud/aiplatform/v1/nas_job_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/job_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.CreateCustomJobRequest" do
      optional :parent, :string, 1
      optional :custom_job, :message, 2, "google.cloud.aiplatform.v1.CustomJob"
    end
    add_message "google.cloud.aiplatform.v1.GetCustomJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListCustomJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListCustomJobsResponse" do
      repeated :custom_jobs, :message, 1, "google.cloud.aiplatform.v1.CustomJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteCustomJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CancelCustomJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CreateDataLabelingJobRequest" do
      optional :parent, :string, 1
      optional :data_labeling_job, :message, 2, "google.cloud.aiplatform.v1.DataLabelingJob"
    end
    add_message "google.cloud.aiplatform.v1.GetDataLabelingJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListDataLabelingJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListDataLabelingJobsResponse" do
      repeated :data_labeling_jobs, :message, 1, "google.cloud.aiplatform.v1.DataLabelingJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteDataLabelingJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CancelDataLabelingJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CreateHyperparameterTuningJobRequest" do
      optional :parent, :string, 1
      optional :hyperparameter_tuning_job, :message, 2, "google.cloud.aiplatform.v1.HyperparameterTuningJob"
    end
    add_message "google.cloud.aiplatform.v1.GetHyperparameterTuningJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListHyperparameterTuningJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListHyperparameterTuningJobsResponse" do
      repeated :hyperparameter_tuning_jobs, :message, 1, "google.cloud.aiplatform.v1.HyperparameterTuningJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteHyperparameterTuningJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CancelHyperparameterTuningJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CreateNasJobRequest" do
      optional :parent, :string, 1
      optional :nas_job, :message, 2, "google.cloud.aiplatform.v1.NasJob"
    end
    add_message "google.cloud.aiplatform.v1.GetNasJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListNasJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListNasJobsResponse" do
      repeated :nas_jobs, :message, 1, "google.cloud.aiplatform.v1.NasJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteNasJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CancelNasJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.GetNasTrialDetailRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListNasTrialDetailsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.ListNasTrialDetailsResponse" do
      repeated :nas_trial_details, :message, 1, "google.cloud.aiplatform.v1.NasTrialDetail"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.CreateBatchPredictionJobRequest" do
      optional :parent, :string, 1
      optional :batch_prediction_job, :message, 2, "google.cloud.aiplatform.v1.BatchPredictionJob"
    end
    add_message "google.cloud.aiplatform.v1.GetBatchPredictionJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListBatchPredictionJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListBatchPredictionJobsResponse" do
      repeated :batch_prediction_jobs, :message, 1, "google.cloud.aiplatform.v1.BatchPredictionJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteBatchPredictionJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CancelBatchPredictionJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.CreateModelDeploymentMonitoringJobRequest" do
      optional :parent, :string, 1
      optional :model_deployment_monitoring_job, :message, 2, "google.cloud.aiplatform.v1.ModelDeploymentMonitoringJob"
    end
    add_message "google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesRequest" do
      optional :model_deployment_monitoring_job, :string, 1
      optional :deployed_model_id, :string, 2
      optional :feature_display_name, :string, 3
      repeated :objectives, :message, 4, "google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective"
      optional :page_size, :int32, 5
      optional :page_token, :string, 6
      optional :start_time, :message, 7, "google.protobuf.Timestamp"
      optional :end_time, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective" do
      optional :type, :enum, 1, "google.cloud.aiplatform.v1.ModelDeploymentMonitoringObjectiveType"
      optional :top_feature_count, :int32, 4
    end
    add_message "google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesResponse" do
      repeated :monitoring_stats, :message, 1, "google.cloud.aiplatform.v1.ModelMonitoringStatsAnomalies"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.GetModelDeploymentMonitoringJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListModelDeploymentMonitoringJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListModelDeploymentMonitoringJobsResponse" do
      repeated :model_deployment_monitoring_jobs, :message, 1, "google.cloud.aiplatform.v1.ModelDeploymentMonitoringJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UpdateModelDeploymentMonitoringJobRequest" do
      optional :model_deployment_monitoring_job, :message, 1, "google.cloud.aiplatform.v1.ModelDeploymentMonitoringJob"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.DeleteModelDeploymentMonitoringJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.PauseModelDeploymentMonitoringJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ResumeModelDeploymentMonitoringJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.UpdateModelDeploymentMonitoringJobOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        CreateCustomJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateCustomJobRequest").msgclass
        GetCustomJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetCustomJobRequest").msgclass
        ListCustomJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListCustomJobsRequest").msgclass
        ListCustomJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListCustomJobsResponse").msgclass
        DeleteCustomJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteCustomJobRequest").msgclass
        CancelCustomJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelCustomJobRequest").msgclass
        CreateDataLabelingJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateDataLabelingJobRequest").msgclass
        GetDataLabelingJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetDataLabelingJobRequest").msgclass
        ListDataLabelingJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDataLabelingJobsRequest").msgclass
        ListDataLabelingJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDataLabelingJobsResponse").msgclass
        DeleteDataLabelingJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteDataLabelingJobRequest").msgclass
        CancelDataLabelingJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelDataLabelingJobRequest").msgclass
        CreateHyperparameterTuningJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateHyperparameterTuningJobRequest").msgclass
        GetHyperparameterTuningJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetHyperparameterTuningJobRequest").msgclass
        ListHyperparameterTuningJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListHyperparameterTuningJobsRequest").msgclass
        ListHyperparameterTuningJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListHyperparameterTuningJobsResponse").msgclass
        DeleteHyperparameterTuningJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteHyperparameterTuningJobRequest").msgclass
        CancelHyperparameterTuningJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelHyperparameterTuningJobRequest").msgclass
        CreateNasJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateNasJobRequest").msgclass
        GetNasJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetNasJobRequest").msgclass
        ListNasJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListNasJobsRequest").msgclass
        ListNasJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListNasJobsResponse").msgclass
        DeleteNasJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteNasJobRequest").msgclass
        CancelNasJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelNasJobRequest").msgclass
        GetNasTrialDetailRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetNasTrialDetailRequest").msgclass
        ListNasTrialDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListNasTrialDetailsRequest").msgclass
        ListNasTrialDetailsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListNasTrialDetailsResponse").msgclass
        CreateBatchPredictionJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateBatchPredictionJobRequest").msgclass
        GetBatchPredictionJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetBatchPredictionJobRequest").msgclass
        ListBatchPredictionJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListBatchPredictionJobsRequest").msgclass
        ListBatchPredictionJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListBatchPredictionJobsResponse").msgclass
        DeleteBatchPredictionJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteBatchPredictionJobRequest").msgclass
        CancelBatchPredictionJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelBatchPredictionJobRequest").msgclass
        CreateModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateModelDeploymentMonitoringJobRequest").msgclass
        SearchModelDeploymentMonitoringStatsAnomaliesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesRequest").msgclass
        SearchModelDeploymentMonitoringStatsAnomaliesRequest::StatsAnomaliesObjective = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective").msgclass
        SearchModelDeploymentMonitoringStatsAnomaliesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SearchModelDeploymentMonitoringStatsAnomaliesResponse").msgclass
        GetModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetModelDeploymentMonitoringJobRequest").msgclass
        ListModelDeploymentMonitoringJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelDeploymentMonitoringJobsRequest").msgclass
        ListModelDeploymentMonitoringJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelDeploymentMonitoringJobsResponse").msgclass
        UpdateModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateModelDeploymentMonitoringJobRequest").msgclass
        DeleteModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteModelDeploymentMonitoringJobRequest").msgclass
        PauseModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PauseModelDeploymentMonitoringJobRequest").msgclass
        ResumeModelDeploymentMonitoringJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ResumeModelDeploymentMonitoringJobRequest").msgclass
        UpdateModelDeploymentMonitoringJobOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateModelDeploymentMonitoringJobOperationMetadata").msgclass
      end
    end
  end
end
