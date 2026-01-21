# NFC Tools in Flutter

This Flutter project provides a set of NFC tools for interacting with NFC tags and devices. With this application, users can read, write, and interact with NFC tags using their mobile device.

## Features

- **Read NFC Tags**: Easily read data from NFC tags by simply tapping the device against them.
- **Write to NFC Tags**: Write data to NFC tags for various purposes such as storing information.

## Getting Started

### 1. Dependencies
- Add below dependencies in pubspec.yaml
  ```
  cupertino_icons: ^1.0.6
  flutter_screenutil: ^5.9.0
  json_annotation: ^4.8.1
  freezed: ^3.2.4
  freezed_annotation: ^3.1.0
  flutter_bloc: ^9.1.1
  nfc_manager: ^4.1.1
  nfc_manager_ndef: ^1.1.0
  fluttertoast: ^9.0.0
  url_launcher: ^6.2.6
  lottie: ^3.1.0

  dev_dependencies:
  flutter_lints: ^6.0.0
  build_runner: ^2.10.5
  ```
- Add this permission in AndroidManifest.xml file
  ```
    <uses-feature android:name="android.hardware.nfc" android:required="true" />
    <uses-permission android:name="android.permission.NFC" />
  ```
- Add this permission in Info.plist file
  ```
   <key>NFCReaderUsageDescription</key>
	 <string>This app need to NFC scan permission for scan NFC Tag.</string>
  ```
### 2. Code SetUp
- Nfc ReadTag:
  ```
   Future<void> readNfcTag() async {
     await NfcManager.instance.startSession(
     pollingOptions: {
     NfcPollingOption.iso14443,
     NfcPollingOption.iso15693,
     },
     onSessionErrorIos: (error) async {
     await NfcManager.instance.stopSession();
     },
     onDiscovered: (NfcTag tag) async {
     final ndef = Ndef.from(tag);
     String payload = '';

     if (ndef?.cachedMessage != null) {
       final NdefMessage message = ndef!.cachedMessage!;
       if (message.records.isNotEmpty) {
         final NdefRecord record = message.records.first;

         // Decode payload (Text record)
         final String decoded = utf8.decode(record.payload.toList());

         // Remove language code prefix
         payload = decoded.substring(1);
       }
     }

     if (payload.isNotEmpty) {
       debugPrint('NFC Payload: $payload');
     } else {
       debugPrint('No NDEF payload found');
     }

     await NfcManager.instance.stopSession();
     },
    );
   }

   ```
- Nfc WriteTag:
  ```
   Future<void> writeNfcTag({
     required String value,
     required bool isLink,
     }) async {
     await NfcManager.instance.startSession(
       pollingOptions: {
         NfcPollingOption.iso14443,
         NfcPollingOption.iso15693,
       },
       onSessionErrorIos: (error) async {
         await NfcManager.instance.stopSession();
       },
       onDiscovered: (NfcTag tag) async {
         final ndef = Ndef.from(tag);

         if (ndef == null || !ndef.isWritable) {
           await NfcManager.instance.stopSession();
           throw Exception('Tag is not NDEF writable');
         }

         final NdefMessage message = NdefMessage(
           records: [
             isLink
                 ? NdefRecord.createUri(Uri.parse(value))
                 : NdefRecord.createText(value),
           ],
         );

        try {
          await ndef.write(message: message);
          await NfcManager.instance.stopSession();
          debugPrint('NDEF write successful');
        } catch (e) {
          await NfcManager.instance.stopSession();
          rethrow;
        }
       }, 
     );
   }

   ```

## Video

https://github.com/ProdevSoftware/nfc_tools/assets/97152083/d19a5f54-a705-4ce7-a63a-df9126864e6f
