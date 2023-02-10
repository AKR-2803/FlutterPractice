# Firebase : Sign in with google (& signout) 

### Complete these 3 firebase steps of setup : 

- Register app.
- Download and then add config file (Download google-services.json), put it inside [android/app/].
- Add firebase SDK :  match the code and add required lines of code in build.gradle files.


### **IMP** : You NEED SHA-1 Key for SignInWithGoogle to work!

To find the key :
From your directory folder fire these commands in the terminal : 
```
cd android
./gradlew signingReport 
```

-> more info [here](https://developers.google.com/android/guides/client-auth?authuser=0&hl=en#using_gradles_signing_report)

Console will look something like this : 

```
> Task :google_sign_in_android:signingReport
Variant: debugAndroidTest
Config: debug
Store: C:\Users\AARYAVEER RAJPUT\.android\debug.keystore
Alias: AndroidDebugKey
MD5: B1:63:27:01:7B:5E:50:57:34:63:0C:29:6C:AB:FF:DA
SHA1: A4:F1:9B:3B:EC:80:61:D3:DB:C9:D8:9C:76:D1:7C:0F:3F:FD:23:CC
SHA-256: 6C:9A:76:43:C9:E4:F6:AF:73:A9:7D:43:B4:25:B4:D2:16:D0:39:B2:85:24:E4:B8:59:C7:63:09:66:E0:BB:66
Valid until: Thursday, 30 January, 2053

```

**IMP**: In Project Settings in firebase project, find [Add FingerPrint] and add the SHA-1 key. It will be required for google sign in to work.
Moreover, make sure inside [Authentication->Sign-in method] Google Sign in method is ENABLED.


### Packages
Lastly, 
You will need to import following packages:

```
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
```

You can add these lines under dependencies inside the "pubspec.yaml" file  (ensure proper indentation) [choose the versions according to compatible versions of dart SDK you have, you can check compatibility in "Versions" section of the respective dart package, For example [google_sign_in](https://pub.dev/packages/google_sign_in/versions) package]

```
dependencies:
    firebase_auth: ^4.2.6
    google_sign_in: ^5.4.4
```

### Files and Code

1. [auth_service.dart](https://github.com/AKR-2803/FlutterPractice/blob/day7_firebase/lib/auth_service.dart) [This file will handle signIn and signOut methods].


```
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myshoesapp/pages/home_page.dart';
import 'package:myshoesapp/pages/login_page.dart';

class AuthService {
  GoogleSignIn googleSignIn = GoogleSignIn();

  //1. handleAuthState()
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LoginPage();
          }
        });
  }

  // signInWithGoogle()
  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // signOut()
  Future<void> signOutWithGoogle() async {
    await FirebaseAuth.instance.signOut();
    await googleSignIn.signOut();
    // Navigator.pop(context);
    // return LoginPage();
  }
}


```


2.  [login_page.dart](https://github.com/AKR-2803/FlutterPractice/blob/day7_firebase/lib/pages/login_page.dart)  (Make a simple login page with a button for google sign in)
[UI tips:  You may use IconButton, and provide google icon from FontAwesomeIcons. Alternatively, you may also provide a child :icon inside a conatiner and wrap it aroung a GestureDetector to enable the onTap() function]


3. [home_page.dart](https://github.com/AKR-2803/FlutterPractice/blob/day7_firebase/lib/pages/home_page.dart) (User will be redirected to this home page after sign in is successful): To implement the signout button lets keep the UI of homepage simple:
Display : username and email of the user, with a SignOut button.

4. [main.dart](https://github.com/AKR-2803/FlutterPractice/blob/day7_firebase/lib/main.dart) 

Ensure initializing app using firebase with an async main function, like this :

```
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
```

Other files inside components folder and utils are just for the UI of login page.



## Running this project in your device: 

-> Download the zip file from [here](https://github.com/AKR-2803/FlutterPractice/tree/day7_firebase).
-> Change the google-services.json to your file from the firebase.
-> Change the versions of packages inside pubspec.yaml(if needed).
-> You are good to go.


-> In case you are facing some other errors, try to resolve them by searching them, trust me you'll learn a lot more solving those errors than actually running the code. 
-> You can also refer to a YouTube tutorial : just make sure its not too old, else some features might not work, find recent tutorials.
-> If you still need any help, ferel free to comment or contact me.


ALL THE BEST :)
