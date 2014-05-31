# “Open the pod bay doors HAL”

CocoaPods plug-in to open a workspace. If no workspace is found, the command
continues up the directory tree looking for one to open.

Also adds the ability to install pods and then open the workspace. Useful when
modifying your `Podfile`.

## Installation


Install the gem:

    $ gem install cocoapods-open

## Usage

Open the workspace in Xcode

    pod open

Open the workspace in AppCode

    pod open -a

Install pods and then open the workspace (`pod install && pod open`)

    pod reinstall

## Author

Hi, I am Les Hill and I make things.

If you are happy with this gem, follow me on Github
[@leshill](https://github.com/leshill) and Twitter
[@leshill](https://twitter.com/leshill).

## Contributors

* Sam Soffes        (@soffes)      : Quote workspace file name (fixes #1!)
* Mark Rickert      (@markrickert) : `reinstall` command
* Victor Ilyukevich (@yas375)      : `open -a` option
* Robert Wijas      (@robertwijas) : Fixed arguments warning

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
