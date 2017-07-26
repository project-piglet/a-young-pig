# Setup

In order to get this running you will have to do a few things.

## Mac OSX

### Required:

* Install Homebrew
  ``` bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

* Install watchman
	``` bash
    brew install watchman
    ```

* Install nvm
  ``` bash
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
  ```
  * Install node
	``` bash 
	nvm install node
	```

* Install react native CLI
	``` bash
    npm install react-native-cli -g
	```

### Preferred editors:

* Install [VSCode](https://code.visualstudio.com/)
  * Install TypeScript plugin
  * Install TSLint plugin

* Install [XCode](https://developer.apple.com/download/)
	* Install swiftlint
		``` bash
        brew install swiftlint
        ```

* Install [Android Studio](https://developer.android.com/studio/index.html)
	* Install the JetBrains Kotlin plugin 

# To Run the App

1. Install node modules
	``` bash
	npm install
	```
1. Run the packager / typescript compiler by running npm start
	``` bash
	npm start
	```
1. Launch the app via Android Studio or XCode.

That's it!