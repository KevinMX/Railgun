# Project Railgun ([中文介绍](README_zh.md))

A **railgun** for your (wireless) router(s).

***

### Usage

Go to release or Actions CI page. Use at your discretion.

***

### Supported Devices

Currently supported & Tested

| Target        | Device                  |
| ------------- | ----------------------- |
| mt7981/apbase | JCG Q30 Pro             |

WIP

| Target        | Device                         |
| ------------- | ------------------------------ |
| mt7981        | All devices                    |
| mt7981/apbase | All devices except JCG Q30 Pro |

Dropped, please consider using [ImmortalWrt](https://firmware-selector.immortalwrt.org/) instead (except UFI003)

| Target        | Device                                                           |
| ------------- | ---------------------------------------------------------------- |
| ramips/mt7621 | [newifi 3 / newifi D2](https://openwrt.org/toh/lenovo/newifi_d2) |
| ramips/mt7621 | [Phicomm K2P](https://openwrt.org/toh/phicomm/k2p_ke2p)          |
| ipq40xx       | [P&W R619AC](https://openwrt.org/toh/p_w/r619ac)                 |
| x86_64        | generic (EFI boot only)                                                     |
| msm89xx       | ufi003                                                           |

(I don't have the device on hand right ATM. Advice & bug reports welcome.)

***

### Additional Info

| Target                    | LuCI/LAN default IP | Username | Password   | Source Repo                                                                                 |
| ------------------------- | ------------------- | -------- | ---------- | ------------------------------------------------------------------------------------------- |
| mt7981                    | `10.0.0.1`          | `root`   | `password` | [hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x)                 |
| mt7981/apbase             | `10.0.0.1`          | `root`   | `password` | [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) |

Since I daily drive this firmware as well, it might contain some dirty & ugly hacks. If you feel uncomfortable about this, do not use this firmware.

***

### If anything goes wrong...

If you think there's something wrong in my builds, feel free to create an [issue](https://github.com/KevinMX/Railgun/issues/new/choose). 

I don't like those annoying issue templates, those are disclaimers rather than rules. Just remember to leave enough information (full reproduce steps, necessary logs, etc) here. Give us as much info as you can. If you don't know what to provide, JUST ASK.

Nobody like guess your problem and come up with a solution out of no where :)

If you think the issue is from upstream projects, please open issues there instead.

***

### Credits

Original author · [**P3TERX**](https://p3terx.com)/[Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

Upstream projects

- [Lean's LEDE source](https://github.com/coolsnowwolf/lede)
- [padavanonly's ImmortalWrt source](https://github.com/padavanonly/immortalwrt)
- [padavanonly's ImmortalWrt source for MT798x](https://github.com/padavanonly/immortalwrt-mt798x-6.6)
- [HandsomeMod](https://github.com/HandsomeMod/HandsomeMod)
- [hanwckf's immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x)

Infra & CI

- [GitHub Actions CI](https://github.com/features/actions)

Special thanks

- [237176256 @ right.com.cn](https://www.right.com.cn/forum/space-uid-364126.html) a.k.a [padavanonly](https://github.com/padavanonly) (for guiding me enabling 802.11 k/v/r support for MT7615)

And more...

***

### License

[WTFNMF](https://github.com/adversary-org/wtfnmf) © [**Kevin.MX**](https://mary.kevinmx.top)
