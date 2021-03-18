# Flutter Video Call Integration with Vonage
￼
This application provides demo of one to one video call using Vonage Video API.
Since there is no office support for flutter from voyage, this demo uses platform channel to communicate with native voyage SDK. This demo works on both Android and IOS.

<br/>
<br/>
<img src="samplegif.gif" height="500px"/>
<br/>

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
BSD 3-Clause License

Copyright (c) 2021, Simform Solutions
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
