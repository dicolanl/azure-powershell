﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.ScenarioTest;
using Microsoft.Azure.ServiceManagement.Common.Models;
using Microsoft.WindowsAzure.Commands.ScenarioTest;
using Xunit;

namespace Microsoft.Azure.Commands.SecurityInsights.Test.ScenarioTests
{
    public class AlertRulesTests
    {
        private readonly XunitTracingInterceptor _logger;

        public AlertRulesTests(Xunit.Abstractions.ITestOutputHelper output)
        {
            _logger = new XunitTracingInterceptor(output);
            XunitTracingInterceptor.AddToContext(_logger);
            TestExecutionHelpers.SetUpSessionAndProfile();
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void ListAlertRules()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "Get-AzSentinelAlertRule-List");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void GetAction()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "Get-AzSentinelAlertRule-Get");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void CreateAlertRuleFusion()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "New-AzSentinelAlertRule-CreateFusion");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void CreateAlertRuleMSIC()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "New-AzSentinelAlertRule-CreateMSIC");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void CreateAlertRuleScheduled()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "New-AzSentinelAlertRule-CreateScheduled");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void UpdateAlertRule()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "Set-AzSentinelAlertRule-Update");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void RemoveAlertRule()
        {
            TestController.NewInstance.RunPowerShellTest(_logger, "Remove-AzSentinelAlertRule-Delete");
        }
    }
}
