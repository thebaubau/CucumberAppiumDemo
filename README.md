**Installing:**

Open [_Appium for Windows_](https://github.com/appium/appium/blob/master/docs/en/appium-setup/running-on-windows.md) and follow setup instructions.

**Running:**

* Open a **cmd** window and type `appium`. This will start the server
* Open `appium.txt` from `config` folder and change _deviceName_ to your currently running _device / emulator_ name (eg: "Pixel_XL_API_25")
* From anothor **cmd** window `cd` to the project forder
* Run `bundle install`
* Run `bundle exec cucumber features\test.feature` to start the demo test