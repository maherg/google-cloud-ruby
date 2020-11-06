# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1/scan_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/websecurityscanner/v1/scan_config.proto", :syntax => :proto3) do
    add_message "google.cloud.websecurityscanner.v1.ScanConfig" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :max_qps, :int32, 3
      repeated :starting_urls, :string, 4
      optional :authentication, :message, 5, "google.cloud.websecurityscanner.v1.ScanConfig.Authentication"
      optional :user_agent, :enum, 6, "google.cloud.websecurityscanner.v1.ScanConfig.UserAgent"
      repeated :blacklist_patterns, :string, 7
      optional :schedule, :message, 8, "google.cloud.websecurityscanner.v1.ScanConfig.Schedule"
      optional :export_to_security_command_center, :enum, 10, "google.cloud.websecurityscanner.v1.ScanConfig.ExportToSecurityCommandCenter"
      optional :risk_level, :enum, 12, "google.cloud.websecurityscanner.v1.ScanConfig.RiskLevel"
      optional :managed_scan, :bool, 13
      optional :static_ip_scan, :bool, 14
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Authentication" do
      oneof :authentication do
        optional :google_account, :message, 1, "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.GoogleAccount"
        optional :custom_account, :message, 2, "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.CustomAccount"
        optional :iap_credential, :message, 4, "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential"
      end
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.GoogleAccount" do
      optional :username, :string, 1
      optional :password, :string, 2
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.CustomAccount" do
      optional :username, :string, 1
      optional :password, :string, 2
      optional :login_url, :string, 3
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential" do
      oneof :iap_credentials do
        optional :iap_test_service_account_info, :message, 1, "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo"
      end
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo" do
      optional :target_audience_client_id, :string, 1
    end
    add_message "google.cloud.websecurityscanner.v1.ScanConfig.Schedule" do
      optional :schedule_time, :message, 1, "google.protobuf.Timestamp"
      optional :interval_duration_days, :int32, 2
    end
    add_enum "google.cloud.websecurityscanner.v1.ScanConfig.UserAgent" do
      value :USER_AGENT_UNSPECIFIED, 0
      value :CHROME_LINUX, 1
      value :CHROME_ANDROID, 2
      value :SAFARI_IPHONE, 3
    end
    add_enum "google.cloud.websecurityscanner.v1.ScanConfig.RiskLevel" do
      value :RISK_LEVEL_UNSPECIFIED, 0
      value :NORMAL, 1
      value :LOW, 2
    end
    add_enum "google.cloud.websecurityscanner.v1.ScanConfig.ExportToSecurityCommandCenter" do
      value :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
    end
  end
end

module Google
  module Cloud
    module WebSecurityScanner
      module V1
        ScanConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig").msgclass
        ScanConfig::Authentication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication").msgclass
        ScanConfig::Authentication::GoogleAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.GoogleAccount").msgclass
        ScanConfig::Authentication::CustomAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.CustomAccount").msgclass
        ScanConfig::Authentication::IapCredential = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential").msgclass
        ScanConfig::Authentication::IapCredential::IapTestServiceAccountInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo").msgclass
        ScanConfig::Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Schedule").msgclass
        ScanConfig::UserAgent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.UserAgent").enummodule
        ScanConfig::RiskLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.RiskLevel").enummodule
        ScanConfig::ExportToSecurityCommandCenter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.ExportToSecurityCommandCenter").enummodule
      end
    end
  end
end