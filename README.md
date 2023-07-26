# Project Railgun ([中文介绍](README_zh.md))

A **railgun** for your (wireless) router(s).

***

### Usage

Go to release or Actions CI page. Use at your discretion.

A small warning for users already using previous versions Railgun firmware for ramips/mt7621 (Before Jan 3 2023):

Please notice that the firmware of these devices (newifi D2/newifi 3 and Phicomm K2P) has just switched to [padavanonly/immortalwrt](https://github.com/padavanonly/immortalwrt) source. **You will need a clean flash in your bootloader** (opboot, pbboot, or anything else) **other than upgrading in LuCI WebUI. And you will lose all your configurations. Do backups.**

Warning for Phicomm K2P:

Since there's just not enough space to fit latest version of Xray-core into that tiny 16M SPI Flash, I have to remove luci-app-ssr-plus (a.k.a. helloworld) and replaced it with OpenClash, which in theory, combines with Clash.Meta core, should provide most functionalities. I didn't test it since I don't have the device on hand, if you ran into any issues, or you have a better implementation, feel free to open up an [issue](https://github.com/KevinMX/Railgun/issues), or discuss in [discussions](https://github.com/KevinMX/Railgun/discussions).

***

### Supported Devices

Currently supported & Tested

| CPU / Architecture | Device                  |
|--------------------|-------------------------|
| x86_64             | generic (EFI boot only) |
| msm89xx            | ufi003                  |
| mt7981             | JCG Q30 Pro             |

Currently supported but untested

| CPU / Architecture | Device                                                           |
|--------------------|------------------------------------------------------------------|
| ramips/mt7621      | [newifi 3 / newifi D2](https://openwrt.org/toh/lenovo/newifi_d2) |
| ramips/mt7621      | [Phicomm K2P](https://openwrt.org/toh/phicomm/k2p_ke2p)          |
| ipq40xx            | [P&W R619AC](https://openwrt.org/toh/p_w/r619ac)                 |

(I don't have the device on hand right ATM. Advice & bug reports welcome.)

***

### Additional Info

| CPU / Architecture | LuCI/LAN default IP | Username | Password   | Source Repo                                                                 |
|--------------------|---------------------|----------|------------|-----------------------------------------------------------------------------|
| x86_64             | `10.0.0.1`          | `root`   | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| ipq40xx            | `10.0.0.1`          | `root`   | `password` | [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)                   |
| msm89xx            | `10.0.0.1`          | `root`   | `password` | [HandsomeMod/HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)       |
| mt7981             | `10.0.0.1`          | `root`   | `password` | [padavanonly/immortalwrtARM](https://github.com/padavanonly/immortalwrtARM) |
| ramips/mt7621      | `192.168.2.1`       | `root`   | `password` | [padavanonly/immortalwrt](https://github.com/padavanonly/immortalwrt)       |

Since I daily drive this firmware as well, it might contain some dirty & ugly hacks. If you feel uncomfortable about this, do not use this firmware.

***

### If anything goes wrong...

If you think there's something wrong in my builds, feel free to create an [issue](https://github.com/KevinMX/Railgun/issues/new/choose). No annoying templates needed. Just remember to leave enough information (how to reproduce, necessary logs, etc) here. Nobody like guess your problem and come up with a solution out of no where :)

If you think the issue is from upstream projects, please open issues there.

***

### Credits

[P3TERX](https://p3terx.com)/[Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

[Lean's LEDE source](https://github.com/coolsnowwolf/lede)

[padavanonly's ImmortalWrt source](https://github.com/padavanonly/immortalwrt)

[padavanonly's ImmortalWrtARM source](https://github.com/padavanonly/immortalwrtARM)

[HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)

[small-package](https://github.com/kenzok8/small-package)

[GitHub Actions CI](https://github.com/features/actions)

[237176256 @ right.com.cn](https://www.right.com.cn/forum/space-uid-364126.html) a.k.a [MeIsReallyBa](https://github.com/MeIsReallyBa) (for guiding me enabling 802.11 k/v/r support for MT7615)

And more...

***

### License

[WTFNMF](https://github.com/adversary-org/wtfnmf) © [**Kevin.MX**](https://mary.kevinmx.top)
