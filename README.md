<H1>Grids</H1>

<p align="center">

<a href="https://travis-ci.org/iTofu/Grids"><img src="https://img.shields.io/travis/iTofu/Grids.svg?style=flat"></a>
<a href="http://cocoadocs.org/docsets/Grids"><img src="https://img.shields.io/cocoapods/v/Grids.svg"></a>
<a href="https://raw.githubusercontent.com/iTofu/Grids/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/Grids.svg"></a>
<a href="http://cocoadocs.org/docsets/Grids"><img src="https://img.shields.io/cocoapods/p/Grids.svg"></a>
<a href="https://LeoDev.me"><img src="https://img.shields.io/badge/blog-LeoDev.me-brightgreen.svg"></a>

</p>

<p>

<img src="https://raw.githubusercontent.com/iTofu/Grids/master/DemoImages/GridsDemo01.png" alt="Grids" title="Grids" width="424"/>

🏁 Grids layout, making views equidistant. Base on [SnapKit](https://github.com/SnapKit/SnapKit). (Waiting [logo](mailto:leodaxia@gmail.com)...)

</p>

```
In me the tiger sniffs the rose.

心有猛虎，细嗅蔷薇。
```

Welcome to visit my blog：https://LeoDev.me



## Contents

* [Requirements](https://github.com/iTofu/Grids#requirements)
* [Installation](https://github.com/iTofu/Grids#installation)
* [Usage](https://github.com/iTofu/Grids#usage)
* [ChangeLog](https://github.com/iTofu/Grids#changelog)
* [Support](https://github.com/iTofu/Grids#support)
* [License](https://github.com/iTofu/Grids#license)



## Requirements

* iOS 8.0+ / macOS X 10.11+ / tvOS 9.0+
* Xcode 8.0+
* Swift 3.0+



## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build Grids.

To integrate Grids into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

target '<Your Target Name>' do
    pod 'Grids'
end
```

### Manually

If you prefer not to use the aforementioned dependency manager, you can integrate Grids into your project manually.



## Usage

* Quick Start:

  ```swift
  let view1 = UIView()
  let view2 = UIView()

  self.view.addSubview(view1)
  self.view.addSubview(view2)

  view1.snp.makeConstraints { (make) in
      make.centerY.equalToSuperview()
      make.size.equalTo(CGSize(width: 80.0, height: 80.0))
    
      make.centerY.equalTo(view2)
      make.size.equalTo(view2)
  }

  self.view.grids.horizontal(subviews: [view1, view2])
  ```
  
  Preview:

  <img src="https://raw.githubusercontent.com/iTofu/Grids/master/DemoImages/GridsDemo02.png" alt="Grids" title="Grids" width="424"/>

* Resources:

  * [F.A.Q.](https://github.com/iTofu/Grids/issues?q=)



## ChangeLog

### V 0.0.2

* Rename and migrate project:

  ```
  Grid -> Grids
  ```

### V 0.0.1

* Hello World!



## Support

* If you have any question, just [commit a issue](https://github.com/iTofu/Grids/issues/new).

* Mail: `echo bGVvZGF4aWFAZ21haWwuY29tCg== | base64 -D` or `echo ZGV2dGlwQDE2My5jb20K | base64 -D`

* Blog: https://LeoDev.me

* Donations:

  * PayPal:
  
    [![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=leodaxia@gmail.com&item_name=leodaxia@gmail.com)
  
  * Alipay or Wechat Pay:
  
    <img src="https://cdnqiniu.leodev.me/donate.png?v=1" alt="Donate with Alipay or Wechat Pay" title="Donate with Alipay or Wechat Pay" width="320"/>
    
  Please note: donation does not imply any type of service contract.


## License

Grids is released under the [MIT License](https://github.com/iTofu/Grids/blob/master/LICENSE).
