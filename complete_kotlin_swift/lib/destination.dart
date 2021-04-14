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

class Destination {
  static final List<Destination> samples = [
    Destination(
      name: 'Aspen, United States',
      duration: '1 stop · 6h 15m',
      asset: 'crane/destinations/fly_0.jpg',
    ),
    Destination(
      name: 'Big Sur, United States',
      duration: 'Nonstop · 13h 30m',
      asset: 'crane/destinations/fly_1.jpg',
    ),
    Destination(
      name: 'Khumbu Valley, Nepal',
      duration: 'Nonstop · 5h 16m',
      asset: 'crane/destinations/fly_2.jpg',
    ),
    Destination(
      name: 'Machu Picchu, Peru',
      duration: '2 stops · 19h 40m',
      asset: 'crane/destinations/fly_3.jpg',
    ),
    Destination(
      name: 'Malé, Maldives',
      duration: 'Nonstop · 8h 24m',
      asset: 'crane/destinations/fly_4.jpg',
    ),
    Destination(
      name: 'Vitznau, Switzerland',
      duration: '1 stop · 14h 12m',
      asset: 'crane/destinations/fly_5.jpg',
    ),
    Destination(
      name: 'Mexico City, Mexico',
      duration: 'Nonstop · 5h 24m',
      asset: 'crane/destinations/fly_6.jpg',
    ),
    Destination(
      name: 'Mount Rushmore, United States',
      duration: '1 stop · 5h 43m',
      asset: 'crane/destinations/fly_7.jpg',
    ),
    Destination(
      name: 'Singapore',
      duration: 'Nonstop · 8h 25m',
      asset: 'crane/destinations/fly_8.jpg',
    ),
    Destination(
      name: 'Havana, Cuba',
      duration: '1 stop · 15h 52m',
      asset: 'crane/destinations/fly_9.jpg',
    ),
    Destination(
      name: 'Cairo, Egypt',
      duration: 'Nonstop · 5h 57m',
      asset: 'crane/destinations/fly_10.jpg',
    ),
    Destination(
      name: 'Lisbon, Portugal',
      duration: '1 stop · 13h 24m',
      asset: 'crane/destinations/fly_11.jpg',
    ),
  ];

  final String name;

  final String duration;

  final String asset;

  Destination({
    required this.name,
    required this.duration,
    required this.asset,
  });
}
