# androidx
android project helper

## Install via package manager

|OS|PackageManager|Installation Instructions|
|-|-|-|
|`macOS`|[HomeBrew](http://blog.fpliu.com/it/os/macOS/software/HomeBrew)|`brew tap leleliu008/fpliu`<br>`brew install androidx`|
|`GNU/Linux`|[LinuxBrew](http://blog.fpliu.com/it/software/LinuxBrew)|`brew tap leleliu008/fpliu`<br>`brew install androidx`|
|`ArchLinux`<br>`ArcoLinux`<br>`Manjaro Linux`<br>`Windows/msys2`|[pacman](http://blog.fpliu.com/it/software/pacman)|`curl -LO https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0-1-any.pkg.tar.gz`<br>`pacman -Syyu --noconfirm`<br>`pacman -U androidx-0.1.0-1-any.pkg.tar.gz`|
|`Windows/WSL`|[LinuxBrew](http://blog.fpliu.com/it/software/LinuxBrew)|`brew tap leleliu008/fpliu`<br>`brew install androidx`|

## Install using shell script
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/leleliu008/androidx/master/install.sh)"
```
 
## zsh-completion for androidx
I have provide a zsh-completion script for `androidx`. when you've typed `androidx` then type `TAB` key, it will auto complete the rest for you.

**Note**: to apply this feature, you may need to run the command `autoload -U compinit && compinit`

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
        
