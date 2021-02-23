/*
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.codelab.flutter.admobinlineads;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;

// COMPLETE: Import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngine;

// COMPLETE: Import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;

public class MainActivity extends FlutterActivity {

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        // COMPLETE: Register the ListTileNativeAdFactory
        GoogleMobileAdsPlugin.registerNativeAdFactory(flutterEngine, "listTile",
                new ListTileNativeAdFactory(getContext()));
    }

    @Override
    public void cleanUpFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.cleanUpFlutterEngine(flutterEngine);

        // COMPLETE: Unregister the ListTileNativeAdFactory
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "listTile");
    }
}
