// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.PowerShell.Cmdlets.Compute.Helpers.Network.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Usage strings container.
    /// </summary>
    public partial class VirtualNetworkUsageName
    {
        /// <summary>
        /// Initializes a new instance of the VirtualNetworkUsageName class.
        /// </summary>
        public VirtualNetworkUsageName()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the VirtualNetworkUsageName class.
        /// </summary>
        /// <param name="localizedValue">Localized subnet size and usage
        /// string.</param>
        /// <param name="value">Subnet size and usage string.</param>
        public VirtualNetworkUsageName(string localizedValue = default(string), string value = default(string))
        {
            LocalizedValue = localizedValue;
            Value = value;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets localized subnet size and usage string.
        /// </summary>
        [JsonProperty(PropertyName = "localizedValue")]
        public string LocalizedValue { get; private set; }

        /// <summary>
        /// Gets subnet size and usage string.
        /// </summary>
        [JsonProperty(PropertyName = "value")]
        public string Value { get; private set; }

    }
}
