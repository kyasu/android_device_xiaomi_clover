The MI PAD 4 (codenamed _"clover"_) are high-end mid-range tablet from Xiaomi.

Xiaomi MI PAD 4 was announced and released in June 2018.

## Device specifications

| Device       | Xiaomi MI PAD 4 / Xiaomi MI PAD 4 PLUS          |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm SDM660 Snapdragon 660                  |
| CPU          | 8x Qualcomm® Kryo™ 260 up to 2.2GHz             |
| GPU          | Adreno 512                                      |
| Memory       | 3GB / 4GM RAM (LPDDR4X)                         |
| Shipped Android version | 8.1.0                           	 |
| Storage      | 64GB eMMC 5.1 flash storage                     |
| Battery      | Non-removable Li-Po 6000 mAh                    |
| Dimensions   | 200.2 x 120.3 x 7.9 mm                          |
| Display      | 1920 x 1200 (16:10), 8.0 inch  or 10.1 inch     |
| Rear camera | 13MP, f/2.0 1080p 30 fps video|
| Front camera | 5MP, f/2.0|

## Device picture

![Xiaomi MI PAD 4](http://i8.mifile.cn/a1/pms_1529843020.73617168!560x560.jpg)

***

## For building LineageOS 20
Create '.repo/local_manifests/roomservice.xml' with the following content:
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>

  <project name="LineageOS/android_hardware_xiaomi" path="hardware/xiaomi" remote="github" revision="lineage-20" />

  <project name="kyasu/android_kernel_xiaomi_sdm660" path="kernel/xiaomi/sdm660" remote="github" revision="lineage-20" />
  <project name="kyasu/android_device_xiaomi_sdm660-common" path="device/xiaomi/sdm660-common" remote="github" revision="lineage-20" />
  <project name="kyasu/android_device_xiaomi_clover" path="device/xiaomi/clover" remote="github" revision="lineage-20" />
  <project name="kyasu/android_vendor_xiaomi_sdm660-common" path="vendor/xiaomi/sdm660-common" remote="github" revision="lineage-20" />
  <project name="kyasu/android_vendor_xiaomi_clover" path="vendor/xiaomi/clover" remote="github" revision="lineage-20" />

</manifest>
```
