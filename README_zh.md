# Project Railgun ([English](README.md))

为您的（无线）路由器精心打造的 **「超电磁炮」**。

***

### 使用方法

前往 release / 发布页，或者 Actions CI 中自行选择所需固件。

> [!WARNING]
> 致斐讯 K2P / Phicomm K2P 用户：由于 16M SPI Flash 空间不足，已经无法塞下最新版的 Xray-core，在尽可能不损失功能的情况下，切换到了 OpenClash，理论上可使用 Clash.Meta Core 实现先前的绝大部分功能。由于手上没有设备，暂时无法测试。如您遇到任何问题，或者有其他建议，欢迎在 [issue](https://github.com/KevinMX/Railgun/issues)/[discussions](https://github.com/KevinMX/Railgun/discussions) 区讨论。

***

### 当前支持设备

目前已支持 & 已测试

| 目标平台      | 设备名称                  |
|---------------|---------------------------|
| x86_64        | generic (仅支持 EFI 启动) |
| msm89xx       | ufi003                    |
| mt7981/apbase | 捷稀 / JCG Q30 Pro        |

目前已支持但未测试

| 目标平台    | 设备名称                                                                    |
|---------------|---------------------------------------------------------------------------|
| ramips/mt7621 | [newifi 3 / newifi D2 / 新路由 3](https://openwrt.org/toh/lenovo/newifi_d2) |
| ramips/mt7621 | [Phicomm K2P / 斐讯 K2P](https://openwrt.org/toh/phicomm/k2p_ke2p)          |
| ipq40xx       | [P&W R619AC / 竞斗云](https://openwrt.org/toh/p_w/r619ac)                   |
| mt7981        | 所有设备                                                                    |
| mt7981/apbase | 除 JCG Q30 Pro 之外的所有设备                                               |

（手头没有设备，暂时无法测试。欢迎提建议/反馈 bug。）

***

### 其他信息

| 目标平台    | LuCI/LAN 默认 IP 地址 | 用户名 | 密码       | 源码仓库                                                                    |
|---------------|-----------------------|--------|------------|-----------------------------------------------------------------------------|
| x86_64        | `10.0.0.1`            | `root` | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| ipq40xx       | `10.0.0.1`            | `root` | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| msm89xx       | `10.0.0.1`            | `root` | `password` | [HandsomeMod/HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)       |
| mt7981        | `10.0.0.1`            | `root` | `password` | [hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x) |
| mt7981/apbase | `10.0.0.1`            | `root` | `password` | [hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x) |
| ramips/mt7621 | `192.168.2.1`         | `root` | `password` | [padavanonly/immortalwrt](https://github.com/padavanonly/immortalwrt)       |


由于这个固件实际上也是我日用的固件，为了满足我的需求，可能会包含一些不太能上台面的小 hack & 小魔改，介意慎用。

***

### 如果刷完固件翻车了怎么办...

如果您认为我的构建中存在问题，欢迎提 [issue](https://github.com/KevinMX/Railgun/issues/new/choose)。不用搞什么烦人的模板，记得带上一些必须信息即可，例如，如何复现、必要的日志等。毕竟，啥也没有的话，那我就只能靠算命解决问题咯。

如果您认为是上游项目存在问题，请在相关项目提 issue。

***

### 致谢

原作 · [**P3TERX**](https://p3terx.com)/[Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

上游项目

- [Lean's LEDE source](https://github.com/coolsnowwolf/lede)
- [padavanonly's ImmortalWrt source](https://github.com/padavanonly/immortalwrt)
- [HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)
- [hanwckf's immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x)

Infra & CI

- [GitHub Actions CI](https://github.com/features/actions)

特别鸣谢

- [237176256 @ right.com.cn](https://www.right.com.cn/forum/space-uid-364126.html) a.k.a [MeIsReallyBa](https://github.com/MeIsReallyBa) (指导开启 MT7615 的 802.11 k/v/r)

以及更多没有提到的贡献者...

***

### 许可证

[WTFNMF](https://github.com/adversary-org/wtfnmf) © [**Kevin.MX**](https://mary.kevinmx.top)
