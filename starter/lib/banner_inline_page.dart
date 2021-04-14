// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// TODO: Import ad_helper.dart

import 'package:admob_inline_ads_in_flutter/destination.dart';

// TODO: Import google_mobile_ads.dart

import 'package:flutter/material.dart';

class BannerInlinePage extends StatefulWidget {
  final List<Destination> entries;

  BannerInlinePage({
    required this.entries,
  });

  @override
  State createState() => _BannerInlinePageState();
}

class _BannerInlinePageState extends State<BannerInlinePage> {
  // TODO: Add _kAdIndex

  // TODO: Add a BannerAd instance

  // TODO: Add _isAdLoaded

  @override
  void initState() {
    super.initState();

    // TODO: Create a BannerAd instance

    // TODO: Load an ad
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdMob Banner Inline Ad'),
      ),
      body: ListView.builder(
        // TODO: Adjust itemCount based on the ad load state
        itemCount: widget.entries.length,
        itemBuilder: (context, index) {
          // TODO: Render a banner ad

          // TODO: Get adjusted item index from _getDestinationItemIndex()
          final item = widget.entries[index];

          return ListTile(
            leading: Image.asset(
              item.asset,
              width: 48,
              height: 48,
              package: 'flutter_gallery_assets',
              fit: BoxFit.cover,
            ),
            title: Text(item.name),
            subtitle: Text(item.duration),
            onTap: () {
              print('Clicked ${item.name}');
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: Dispose a BannerAd object

    super.dispose();
  }

// TODO: Add _getDestinationItemIndex()

}
