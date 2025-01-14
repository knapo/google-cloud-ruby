# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START videointelligence_v1p3beta1_generated_StreamingVideoIntelligenceService_StreamingAnnotateVideo_sync]
require "google/cloud/video_intelligence/v1p3beta1"

##
# Snippet for the streaming_annotate_video call in the StreamingVideoIntelligenceService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::Client#streaming_annotate_video.
# It may require modification in order to execute successfully.
#
def streaming_annotate_video
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::Client.new

  # Create an input stream.
  input = Gapic::StreamInput.new

  # Call the streaming_annotate_video method to start streaming.
  output = client.streaming_annotate_video input

  # Send requests on the stream. For each request object, set fields by
  # passing keyword arguments. Be sure to close the stream when done.
  input << Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new
  input << Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new
  input.close

  # The returned object is a streamed enumerable yielding elements of type
  # ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse
  output.each do |current_response|
    p current_response
  end
end
# [END videointelligence_v1p3beta1_generated_StreamingVideoIntelligenceService_StreamingAnnotateVideo_sync]
