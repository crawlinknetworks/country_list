# country_list

Library to provide list of country data like, Country Name (`name`), Phone Sial Code (`dial`), Country Apha-2 Code (`alpha2`).

## Getting Started

![](https://github.com/crawlinknetworks/country_list/blob/master/screenshots/screen1.png?raw=true)

## Install

###### pubspec.yaml
```
country_list: <latest_version>
```

## Usage

```
import 'package:country_list/country_list.dart';

.....

ListView.builder(
    itemCount: Countries.list.length,
    itemBuilder: (_, position) {
        Map<String, String> country = Countries.list[position];
        return ListTile(
        leading: Text(country['dial'] ?? ''),
        title: Text(country['name'] ?? ''),
        subtitle: Text(country['alpha2'] ?? ''),
        );
    },
),
```
