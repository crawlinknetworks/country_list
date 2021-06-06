# country_list

A dart library provides a list of country data like Country Name, Dial Code, ISO Code.

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
        leading: Text(country['dialCode'] ?? ''),
        title: Text(country['name'] ?? ''),
        subtitle: Text(country['isoCode'] ?? ''),
        );
    },
),
```
