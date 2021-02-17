/*
 Copyright 2020 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import AEPCore
import Foundation

extension Event {
    /// Reads an array`TargetPrefetch` from the event data
    var prefetchObjectArray: [TargetPrefetch]? {
        return TargetPrefetch.from(dictionaries: data?[TargetConstants.EventDataKeys.PREFETCH_REQUESTS] as? [[String: Any]])
    }

    /// Reads the `TargetParameters` from the event data
    var targetParameters: TargetParameters? {
        return TargetParameters.from(dictionary: data?[TargetConstants.EventDataKeys.TARGET_PARAMETERS] as? [String: Any])
    }

    /// Returns true if this event is a prefetch request event
    var isPrefetchEvent: Bool {
        return data?[TargetConstants.EventDataKeys.PREFETCH_REQUESTS] != nil ? true : false
    }

    /// Returns true if the event is location display request event
    var isLocationDisplayedEvent: Bool {
        return data?[TargetConstants.EventDataKeys.IS_LOCATION_DISPLAYED] != nil ? true : false
    }

    /// Returns true if the event is location clicked request event
    var isLocationClickedEvent: Bool {
        return data?[TargetConstants.EventDataKeys.IS_LOCATION_CLICKED] != nil ? true : false
    }
}
