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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/conversation_profiles"

class ::Google::Cloud::Dialogflow::V2::ConversationProfiles::ClientPathsTest < Minitest::Test
  def test_agent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_path project: "value0"
      assert_equal "projects/value0/agent", path
    end
  end

  def test_conversation_profile_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_profile_path project: "value0", conversation_profile: "value1"
      assert_equal "projects/value0/conversationProfiles/value1", path

      path = client.conversation_profile_path project: "value0", location: "value1", conversation_profile: "value2"
      assert_equal "projects/value0/locations/value1/conversationProfiles/value2", path
    end
  end

  def test_document_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.document_path project: "value0", knowledge_base: "value1", document: "value2"
      assert_equal "projects/value0/knowledgeBases/value1/documents/value2", path

      path = client.document_path project: "value0", location: "value1", knowledge_base: "value2", document: "value3"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2/documents/value3", path
    end
  end

  def test_knowledge_base_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.knowledge_base_path project: "value0", knowledge_base: "value1"
      assert_equal "projects/value0/knowledgeBases/value1", path

      path = client.knowledge_base_path project: "value0", location: "value1", knowledge_base: "value2"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
