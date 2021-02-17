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

import Foundation

enum TargetConstants {
    static let EXTENSION_NAME = "com.adobe.module.target"
    static let FRIENDLY_NAME = "Target"
    static let EXTENSION_VERSION = "3.0.0-beta.1"
    static let DATASTORE_NAME = EXTENSION_NAME
    static let DEFAULT_SESSION_TIMEOUT: Int = 30 * 60 // 30 mins
    static let DELIVERY_API_URL_BASE = "https://%@/rest/v1/delivery/?client=%@&sessionId=%@"
    static let API_URL_HOST_BASE = "%@.tt.omtrdc.net"
    static let HEADER_CONTENT_TYPE = "Content-Type"
    static let HEADER_CONTENT_TYPE_JSON = "application/json"
    static let OLD_API_COMPAT_PARAM = "__oldTargetSdkApiCompatParam__"

    static let MAP_TO_CONTEXT_DATA_KEYS: [String: String] = [
        Identity.SharedState.Keys.ADVERTISING_IDENTIFIER: ContextDataKeys.ADVERTISING_IDENTIFIER,
        Lifecycle.Keys.APP_ID: ContextDataKeys.APPLICATION_IDENTIFIER,
        Lifecycle.Keys.CARRIER_NAME: ContextDataKeys.CARRIER_NAME,
        Lifecycle.Keys.CRASH_EVENT: ContextDataKeys.CRASH_EVENT_KEY,
        Lifecycle.Keys.DAILY_ENGAGED_EVENT: ContextDataKeys.DAILY_ENGAGED_EVENT_KEY,
        Lifecycle.Keys.DAY_OF_WEEK: ContextDataKeys.DAY_OF_WEEK,
        Lifecycle.Keys.DAYS_SINCE_FIRST_LAUNCH: ContextDataKeys.DAYS_SINCE_FIRST_LAUNCH,
        Lifecycle.Keys.DAYS_SINCE_LAST_LAUNCH: ContextDataKeys.DAYS_SINCE_LAST_LAUNCH,
        Lifecycle.Keys.DAYS_SINCE_LAST_UPGRADE: ContextDataKeys.DAYS_SINCE_LAST_UPGRADE,
        Lifecycle.Keys.DEVICE_NAME: ContextDataKeys.DEVICE_NAME,
        Lifecycle.Keys.DEVICE_RESOLUTION: ContextDataKeys.DEVICE_RESOLUTION,
        Lifecycle.Keys.HOUR_OF_DAY: ContextDataKeys.HOUR_OF_DAY,
        Lifecycle.Keys.IGNORED_SESSION_LENGTH: ContextDataKeys.IGNORED_SESSION_LENGTH,
        Lifecycle.Keys.INSTALL_DATE: ContextDataKeys.INSTALL_DATE,
        Lifecycle.Keys.INSTALL_EVENT: ContextDataKeys.INSTALL_EVENT_KEY,
        Lifecycle.Keys.LAUNCH_EVENT: ContextDataKeys.LAUNCH_EVENT_KEY,
        Lifecycle.Keys.LAUNCHES: ContextDataKeys.LAUNCHES,
        Lifecycle.Keys.LAUNCHES_SINCE_UPGRADE: ContextDataKeys.LAUNCHES_SINCE_UPGRADE,
        Lifecycle.Keys.LOCALE: ContextDataKeys.LOCALE,
        Lifecycle.Keys.MONTHLY_ENGAGED_EVENT: ContextDataKeys.MONTHLY_ENGAGED_EVENT_KEY,
        Lifecycle.Keys.OPERATING_SYSTEM: ContextDataKeys.OPERATING_SYSTEM,
        Lifecycle.Keys.PREVIOUS_SESSION_LENGTH: ContextDataKeys.PREVIOUS_SESSION_LENGTH,
        Lifecycle.Keys.RUN_MODE: ContextDataKeys.RUN_MODE,
        Lifecycle.Keys.UPGRADE_EVENT: ContextDataKeys.UPGRADE_EVENT_KEY,
    ]

    enum ContextDataKeys {
        static let INSTALL_EVENT_KEY = "a.InstallEvent"
        static let LAUNCH_EVENT_KEY = "a.LaunchEvent"
        static let CRASH_EVENT_KEY = "a.CrashEvent"
        static let UPGRADE_EVENT_KEY = "a.UpgradeEvent"
        static let DAILY_ENGAGED_EVENT_KEY = "a.DailyEngUserEvent"
        static let MONTHLY_ENGAGED_EVENT_KEY = "a.MonthlyEngUserEvent"
        static let INSTALL_DATE = "a.InstallDate"
        static let LAUNCHES = "a.Launches"
        static let PREVIOUS_SESSION_LENGTH = "a.PrevSessionLength"
        static let DAYS_SINCE_FIRST_LAUNCH = "a.DaysSinceFirstUse"
        static let DAYS_SINCE_LAST_LAUNCH = "a.DaysSinceLastUse"
        static let HOUR_OF_DAY = "a.HourOfDay"
        static let DAY_OF_WEEK = "a.DayOfWeek"
        static let OPERATING_SYSTEM = "a.OSVersion"
        static let APPLICATION_IDENTIFIER = "a.AppID"
        static let DAYS_SINCE_LAST_UPGRADE = "a.DaysSinceLastUpgrade"
        static let LAUNCHES_SINCE_UPGRADE = "a.LaunchesSinceUpgrade"
        static let ADVERTISING_IDENTIFIER = "a.adid"
        static let DEVICE_NAME = "a.DeviceName"
        static let DEVICE_RESOLUTION = "a.Resolution"
        static let CARRIER_NAME = "a.CarrierName"
        static let LOCALE = "a.locale"
        static let RUN_MODE = "a.RunMode"
        static let IGNORED_SESSION_LENGTH = "a.ignoredSessionLength"
    }

    enum TargetJson {
        static let OPTIONS = "options"
        static let PARAMETERS = "parameters"
        static let METRICS = "metrics"

        enum Notification {
            static let ID = "id"
            static let TIMESTAMP = "timestamp"
            static let TOKENS = "tokens"
            static let TYPE = "type"
            static let MBOX = "mbox"
        }

        enum Metric {
            static let TYPE = "type"
            static let EVENT_TOKEN = "eventToken"
        }

        enum MetricType {
            static let DISPLAY = "display"
            static let CLICK = "click"
        }

        enum Mbox {
            static let STATE = "state"
            static let MBOX_AT_PROPERTY_KEY = "at_property"
            static let NAME = "name"
            static let INDEX = "index"
        }
    }

    enum DataStoreKeys {
        static let SESSION_TIMESTAMP = "SESSION_TIMESTAMP"
        static let SESSION_ID = "SESSION_ID"
        static let TNT_ID = "TNT_ID"
        static let EDGE_HOST = "EDGE_HOST"
        static let THIRD_PARTY_ID = "THIRD_PARTY_ID"
    }

    enum TargetRequestValue {
        static let CHANNEL_MOBILE = "mobile"
        static let COLOR_DEPTH_32 = 32
    }

    enum EventName {
        static let LOAD_REQUEST = "TargetLoadRequest"
        static let PREFETCH_REQUESTS = "TargetPrefetchRequest"
        static let PREFETCH_RESPOND = "TargetPrefetchResponse"
        static let REQUEST_IDENTITY = "TargetRequestIdentity"
        static let REQUEST_RESET = "TargetRequestReset"
        static let CLEAR_PREFETCH_CACHE = "TargetClearPrefetchCache"
        static let SET_PREVIEW_DEEPLINK = "TargetSetPreviewRestartDeeplink"
        static let LOCATIONS_DISPLAYED = "TargetLocationsDisplayed"
        static let LOCATION_CLICKED = "TargetLocationClicked"
    }

    enum EventDataKeys {
        static let TARGET_PARAMETERS = "targetparams"
        static let PREFETCH_REQUESTS = "prefetch"
        static let PREFETCH_ERROR = "prefetcherror"
        static let LOAD_REQUESTS = "request"
        static let THIRD_PARTY_ID = "thirdpartyid"
        static let RESET_EXPERIENCE = "resetexperience"
        static let CLEAR_PREFETCH_CACHE = "clearcache"
        static let PREVIEW_RESTART_DEEP_LINK = "restartdeeplink"
        static let MBOX_NAMES = "mboxnames"
        static let MBOX_NAME = "mboxname"
        static let IS_LOCATION_DISPLAYED = "islocationdisplayed"
        static let IS_LOCATION_CLICKED = "islocationclicked"
        static let MBOX_PARAMETERS = "mboxparameters"
        static let ORDER_PARAMETERS = "orderparameters"
        static let PRODUCT_PARAMETERS = "productparameters"
        static let PROFILE_PARAMETERS = "profileparams"
        // shared sate
        static let TNT_ID = "tntid"
    }

    enum Identity {
        static let EXTENSION_NAME = "com.adobe.module.identity"
        enum SharedState {
            enum Keys {
                static let VISITOR_ID_MID = "mid"
                static let VISITOR_ID_BLOB = "blob"
                static let VISITOR_ID_LOCATION_HINT = "locationhint"
                static let VISITOR_IDS_LIST = "visitoridslist"
                static let ADVERTISING_IDENTIFIER = "advertisingidentifier"
            }
        }
    }

    enum Configuration {
        static let EXTENSION_NAME = "com.adobe.module.configuration"
        enum SharedState {
            enum Keys {
                // Core Extension
                static let GLOBAL_CONFIG_PRIVACY = "global.privacy"
                // Target Extension
                static let TARGET_CLIENT_CODE = "target.clientCode"
                static let TARGET_PREVIEW_ENABLED = "target.previewEnabled"
                static let TARGET_NETWORK_TIMEOUT = "target.timeout"
                static let TARGET_ENVIRONMENT_ID = "target.environmentId"
                static let TARGET_PROPERTY_TOKEN = "target.propertyToken"
                static let TARGET_SESSION_TIMEOUT = "target.sessionTimeout"
                static let TARGET_SERVER = "target.server"
            }

            enum Values {
                static let GLOBAL_CONFIG_PRIVACY_OPT_IN = "optedin"
                static let GLOBAL_CONFIG_PRIVACY_OPT_OUT = "optedout"
                static let GLOBAL_CONFIG_PRIVACY_OPT_UNKNOWN = "optunknown"
            }
        }
    }

    enum Lifecycle {
        static let EXTENSION_NAME = "com.adobe.module.lifecycle"
        enum Keys {
            static let APP_ID = "appid"
            static let CARRIER_NAME = "carriername"
            static let CRASH_EVENT = "crashevent"
            static let DAILY_ENGAGED_EVENT = "dailyenguserevent"
            static let DAY_OF_WEEK = "dayofweek"
            static let DAYS_SINCE_FIRST_LAUNCH = "dayssincefirstuse"
            static let DAYS_SINCE_LAST_LAUNCH = "dayssincelastuse"
            static let DAYS_SINCE_LAST_UPGRADE = "dayssincelastupgrade"
            static let DEVICE_NAME = "devicename"
            static let DEVICE_RESOLUTION = "resolution"
            static let HOUR_OF_DAY = "hourofday"
            static let IGNORED_SESSION_LENGTH = "ignoredsessionlength"
            static let INSTALL_DATE = "installdate"
            static let INSTALL_EVENT = "installevent"
            static let LAUNCH_EVENT = "launchevent"
            static let LAUNCHES = "launches"
            static let LAUNCHES_SINCE_UPGRADE = "launchessinceupgrade"
            static let LIFECYCLE_CONTEXT_DATA = "lifecyclecontextdata"
            static let LOCALE = "locale"
            static let MONTHLY_ENGAGED_EVENT = "monthlyenguserevent"
            static let OPERATING_SYSTEM = "osversion"
            static let PREVIOUS_SESSION_LENGTH = "prevsessionlength"
            static let RUN_MODE = "runmode"
            static let UPGRADE_EVENT = "upgradeevent"
        }
    }
}
