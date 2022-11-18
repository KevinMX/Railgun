# Project Railgun

为您的（无线）路由器精心打造的「超电磁炮」。

***

### 使用方法

前往 release / 发布页，或者 Actions CI 中自行选择所需固件。

***

### 当前支持设备

目前已支持 & 已测试

|CPU 架构|设备名称|
|-|-|
|x86_64|generic (仅支持 EFI 启动)|
|ipq40xx|[P&W R619AC / 竞斗云](https://openwrt.org/toh/p_w/r619ac)|
|ramips/mt7621|[newifi 3 / newifi D2 / 新路由 3](https://openwrt.org/toh/lenovo/newifi_d2)|

目前已支持但未测试

|CPU 架构|设备名称|
|-|-|
|ramips/mt7621|[Phicomm K2P / 斐讯 K2P](https://openwrt.org/toh/phicomm/k2p_ke2p)|

（手头目前没有设备故无法测试。）

***

### 其他信息

|CPU 架构|LuCI/LAN 默认 IP 地址|用户名|密码|
|-|-|-|-|
|x86_64|`10.0.0.1`|`root`|`password`|
|ipq40xx|`10.0.0.1`|`root`|`password`|
|ramips/mt7621|`192.168.2.1`|`root`|`password`|

由于这个固件实际上也是我日用的固件，为了满足我的需求，可能会包含一些不太能上台面的小 hack & 小魔改，介意慎用。

***

### 已知问题

针对新路由 3 用户
如果您经常出现 WiFi 断流问题的话，并发现路由器出现大量类似如下内核日志：

```
[223372.061248] mt76x2e 0000:01:00.0: MAC error detected
[223474.608092] mt76x2e 0000:01:00.0: MAC error detected
[223482.877972] mt76x2e 0000:01:00.0: MAC error detected
[223493.347500] mt76x2e 0000:01:00.0: MAC error detected
[223526.806527] mt76x2e 0000:01:00.0: MAC error detected
[223630.654515] mt76x2e 0000:01:00.0: Firmware Version: 0.0.00
[223630.660163] mt76x2e 0000:01:00.0: Build: 1
[223630.664609] mt76x2e 0000:01:00.0: Build Time: 201607111443____
[223630.693270] mt76x2e 0000:01:00.0: Firmware running!
[223630.703388] ieee80211 phy1: Hardware restart was requested
```

目前判断可能是 mt76 开源驱动与新 3 兼容性有问题，请登录路由器后台，尝试将对应 5GHz 频段 WiFi 的发射功率降低到 20 dBm (100mW) 或以下。

目前为了保留 802.11 k/v/r 的兼容性，暂时不考虑 MTK 闭源驱动，除非此问题持续出现且 mt76 上游不予解决。

### 如果刷完固件翻车了怎么办...

如果您认为我的构建中存在问题，欢迎提 [issue](https://github.com/KevinMX/Railgun/issues/new/choose)。不用搞什么烦人的模板，记得带上一些必须信息即可，例如，如何复现、必要的日志等。毕竟，啥也没有的话，那我就只能靠算命解决问题咯。

如果您认为是上游项目存在问题，请在相关项目提 issue。

### 致谢

[P3TERX](https://p3terx.com)/[Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

[Lean's LEDE source](https://github.com/coolsnowwolf/lede)

[small-package](https://github.com/kenzok8/small-package)

[GitHub Actions CI](https://github.com/features/actions)

以及更多没有提到的贡献者...

***

### 许可证

[WTFNMF](https://github.com/adversary-org/wtfnmf) © [**Kevin.MX**](https://mary.kevinmx.top)
