#!/sbin/sh

cp /vendor/etc/wifi/WCNSS_qcom_cfg.ini /mnt/vendor/persist/WCNSS_qcom_cfg.ini
cp /vendor/etc/wifi/WCNSS_qcom_cfg.ini /etc/firmware/wlan/qca_cld
toybox stop wpa_supplicant
toybox stop netd
#toybox rmmod wlan
toybox stop cnss-daemon
toybox stop per_proxy
toybox stop pd_mapper
toybox stop per_mgr
toybox stop tftp_server
toybox stop rmt_storage
toybox stop vendor.qrtr-ns
toybox stop irsc_util
toybox stop vndservicemanager
#stop hwservicemanager
#toybox stop servicemanager
umount /mnt/vendor/persist
umount /vendor/firmware_mnt
rm /tmp/aplist.txt
