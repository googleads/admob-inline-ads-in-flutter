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

// TODO: Import google_mobile_ads.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdMob inline ads'),
      ),
      body: FutureBuilder<dynamic>(
          future: _initGoogleMobileAds(),
          builder: (context, snapshot) {
            List<Widget> children = [];

            if (snapshot.connectionState == ConnectionState.waiting) {
              children.add(Center(
                child: SizedBox(
                  child: CircularProgressIndicator(),
                  width: 48.0,
                  height: 48.0,
                ),
              ));
            } else {
              if (snapshot.hasData) {
                children.addAll([
                  ElevatedButton(
                    child: Text('Banner inline ad'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/banner');
                    },
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    child: Text('Native inline ad'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/native');
                    },
                  ),
                ]);
              } else if (snapshot.hasError) {
                children.add(Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 24,
                      ),
                      SizedBox(width: 8.0),
                      Text('Failed to initialize AdMob SDK'),
                    ],
                  ),
                ));
              }
            }

            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            );
          }),
    );
  }

  Future<dynamic> _initGoogleMobileAds() {
    // TODO: Initialize Google Mobile Ads SDK
    return Future.value(0);
  }
}
