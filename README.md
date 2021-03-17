# Flutter Video Call Integration with Vonage
￼
This application provides demo of one to one video call using Vonage Video API.
Since there is no office support for flutter from voyage, this demo uses platform channel to communicate with native voyage SDK. This demo works on both Android and IOS.
￼

## Pre-requisites
- Android studio 4.0+
- Flutter SDK :  stable, 1.22.4

## How to run this demo project
- Clone this repository into your folder
- Create your SESSION_ID, API_KEY, TOKEN from OpenTok Java server-side library
Pass this  3 variables (SESSION, TOKEN, API_KEY) into platform.invokeMethod  under  _init() method.
- Replace the following parameters with your values
```dart
void startVideoCall() {
  FlutterVonageVideoCall.init(
      session: 'YOUR_SESSION_ID',
      token: 'YOUR_TOKEN',
      apiKey: 'YOUR_API_KEY');
}
```
- Run project.


## How to use?
- You need to install same build in two different device and open the application. Press make video call button on both devices.

## Tech/framework used
- Opentok library
- Flutter & native FlatForm Code Setup 
    * For Android -Kotlin 
    * For IOS - Swift

## Permissions used
- Internet, Camera & Microphone.


## License
```
Copyright 2021 Simform Solutions

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```