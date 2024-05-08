# Project Railgun ([English](README.md))

为您的（无线）路由器精心打造的 **「超电磁炮」**。

***

### 使用方法

前往 release / 发布页，或者 Actions CI 中自行选择所需固件。

***

### 当前支持设备

目前已支持 & 已测试

| 目标平台      | 设备型号                  |
|---------------|---------------------------|
| x86_64        | generic (仅支持 EFI 启动) |
| msm89xx       | ufi003                    |
| mt7981/apbase | 捷稀 / JCG Q30 Pro        |

目前已支持但未测试

| 目标平台      | 设备型号                                                                    |
|---------------|---------------------------------------------------------------------------|
| ramips/mt7621 | [newifi 3 / newifi D2 / 新路由 3](https://openwrt.org/toh/lenovo/newifi_d2) |
| ramips/mt7621 | [Phicomm K2P / 斐讯 K2P](https://openwrt.org/toh/phicomm/k2p_ke2p)          |
| ipq40xx       | [P&W R619AC / 竞斗云](https://openwrt.org/toh/p_w/r619ac)                   |
| mt7981        | 所有设备                                                                    |
| mt7981/apbase | 除 JCG Q30 Pro 之外的所有设备                                               |

（手头没有设备，暂时无法测试。欢迎提建议/反馈 bug。）

需要修复，目前不可用~~（咕咕咕~~

| 目标平台 | 设备型号    |
|----------|-------------|
| mt7981   | All devices |
| msm89xx  | ufi003      |

***

### 其他信息

| 目标平台                  | LuCI/LAN 默认 IP 地址 | 用户名 | 密码       | 源码仓库                                                                    |
|---------------------------|-----------------------|--------|------------|-----------------------------------------------------------------------------|
| x86_64                    | `10.0.0.1`            | `root` | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| ipq40xx                   | `10.0.0.1`            | `root` | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| msm89xx                   | `10.0.0.1`            | `root` | `password` | [HandsomeMod/HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)       |
| mt7981                    | `10.0.0.1`            | `root` | `password` | [hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x) |
| mt7981/apbase             | `10.0.0.1`            | `root` | `password` | [hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x) |
| ramips/mt7621 (newifi_d2) | `192.168.2.1`         | `root` | `password` | [padavanonly/immortalwrt](https://github.com/padavanonly/immortalwrt)       |
| ramips/mt7621 (k2p)       | `192.168.2.1`         | `root` | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |


由于这个固件实际上也是我日用的固件，为了满足我的需求，可能会包含一些不太能上台面的小 hack & 小魔改，介意慎用。

***

### 如果刷完固件翻车了怎么办...

如果您认为我的构建中存在问题，欢迎提 [issue](https://github.com/KevinMX/Railgun/issues/new/choose)。

我个人不喜欢搞什么烦人的模板，那玩意更大程度上是开发者自己的免责声明罢了。记得带上一些必须信息即可，例如，完整的复现步骤、必要的日志等。能给多少给多少，不知道该提什么，直接问。

当然，啥也没有的话，咱就只能靠算命解决问题喽。

如果您认为是上游项目存在问题，请给相关项目提 issue。

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
