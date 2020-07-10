# androidx
android project helper

## Installation
*   on macOS, using [HomeBrew](http://blog.fpliu.com/it/os/macOS/software/HomeBrew)
        
        brew tap leleliu008/fpliu 
        brew install androidx
        
*   on GNU/Linux, using [LinuxBrew](http://blog.fpliu.com/it/software/LinuxBrew)
        
        brew tap leleliu008/fpliu
        brew install androidx
        
## zsh-completion for ndk-pkg
I have provide a zsh-completion script for `androidx`. when you've typed `androidx` then type `TAB` key, it will auto complete the rest for you.

## androidx command usage
*   print the help infomation of `androidx` command
        
        androidx -h
        androidx --help
        androidx help
        
*   print the version of `androidx` and `Android SDK`
        
        androidx -V
        androidx --version
        androidx version
        
*   show keystore's content of a android project
        
        androidx show keystore
        androidx show keystore --project-dir=.
        
*   show version info of a apk file
        
        androidx show version --input-apk-file=~/xx.apk
        
*   build the android project or process a apk file
        
        androidx build
        androidx build --project-dir=. --environment=debug
        androidx build --project-dir=. --environment=release --webp --redex --resguard --channels-gen --channels-zip --install
        androidx build --input-apk-file=~/xx.apk --environment=release --webp --redex --resguard --channels-gen --channels-zip --install
        
