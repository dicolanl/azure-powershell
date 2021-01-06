﻿//
// Copyright (c) Microsoft.  All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

using Microsoft.WindowsAzure.Commands.Common.Attributes;
using Newtonsoft.Json;

namespace Microsoft.Azure.Commands.Network.Models
{
    public class PSApplicationGatewayRequestRoutingRule : PSChildResource
    {
        [Ps1Xml(Target = ViewControl.Table)]
        public string RuleType { get; set; }
        public int? Priority { get; set; }
        public PSResourceId BackendAddressPool { get; set; }
        public PSResourceId BackendHttpSettings { get; set; }
        public PSResourceId HttpListener { get; set; }
        public PSResourceId UrlPathMap { get; set; }
        public PSResourceId RewriteRuleSet { get; set; }
        public PSResourceId RedirectConfiguration { get; set; }
        [Ps1Xml(Target = ViewControl.Table)]
        public string ProvisioningState { get; set; }
        public string Type { get; set; }

        [JsonIgnore]
        public string BackendAddressPoolText
        {
            get { return JsonConvert.SerializeObject(BackendAddressPool, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }

        [JsonIgnore]
        public string BackendHttpSettingsText
        {
            get { return JsonConvert.SerializeObject(BackendHttpSettings, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }

        [JsonIgnore]
        public string HttpListenerText
        {
            get { return JsonConvert.SerializeObject(HttpListener, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }

        [JsonIgnore]
        public string UrlPathMapText
        {
            get { return JsonConvert.SerializeObject(UrlPathMap, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }

        [JsonIgnore]
        public string RewriteRuleSetText
        {
            get { return JsonConvert.SerializeObject(RewriteRuleSet, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }

        [JsonIgnore]
        public string RedirectConfigurationText
        {
            get { return JsonConvert.SerializeObject(RedirectConfiguration, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore }); }
        }
    }
}
