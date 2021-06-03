//
//  Copyright (C) 2021 Google LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

// COMPLETE: Import ListTileNativeAdFactory.h
#import "ListTileNativeAdFactory.h"

// COMPLETE: Implement ListTileNativeAdFactory
@implementation ListTileNativeAdFactory

- (GADNativeAdView *)createNativeAd:(GADNativeAd *)nativeAd
                             customOptions:(NSDictionary *)customOptions {
  GADNativeAdView *nativeAdView =
    [[NSBundle mainBundle] loadNibNamed:@"ListTileNativeAdView" owner:nil options:nil].firstObject;

  ((UILabel *)nativeAdView.headlineView).text = nativeAd.headline;

  ((UILabel *)nativeAdView.bodyView).text = nativeAd.body;
  nativeAdView.bodyView.hidden = nativeAd.body ? NO : YES;

  ((UIImageView *)nativeAdView.iconView).image = nativeAd.icon.image;
  nativeAdView.iconView.hidden = nativeAd.icon ? NO : YES;

  nativeAdView.callToActionView.userInteractionEnabled = NO;

  nativeAdView.nativeAd = nativeAd;

  return nativeAdView;
}

@end
