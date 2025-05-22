This template provides a base for developing android games with nim+raylib.
this template is based of [planetis-m template](https://github.com/planetis-m/naylib-game-template)
but it uses `gradle`, so its easier to integrate other SDKs and stuff

There is a version of this template that already integrates `admob` [here](https://github.com/choltreppe/naylib-android-withads-template)

## compile desktop version for testing

you can use just the normal
```bash
nimble build -r
```
to test as desktop version

## build .apk

1. get android-sdk / -nkd / build-tools someway
2. set the `ANDROID_HOME` and `ANDROID_NDK` env vars
3. run `nimble setupAndroid` to generate the missing files in android project structure
4. run `nimble buildAndroid` to build the `.apk`
5. plug in your device and run `nimble deploy`

## build signed .aab for release

1. fill out the `KeyStorePath` in `build_android.nims`
2. do steps 1-3 for building .apk, if you havent already
3. run `nimble bundleReleaseAndroid`
