# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=false \
    vendor.audio.offload_wakelock=false \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    ro.af.client_heap_size_kbyte=7168 \
    ro.audio.flinger_standbytime_ms=300 \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.av.streaming.offload.enable=true \
    vendor.audio.offload.buffer.size.kb=64 \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25 \
    vendor.audio.offload.gapless.enabled=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd
    vendor.bluetooth.soc=pronto \
    vendor.qcom.bluetooth.soc=pronto \

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    persist.camera.cpp.duplication=false \
    persist.camera.hal.debug.mask=0 \

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.cpurend.vsync=false \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.hwui.renderer=opengl \
    debug.hwui.use_buffer_age=false \
    debug.mdpcomp.idletime=600 \
    debug.performance.tuning=1 \
    debug.sf.hw=1 \
    debug.sf.disable_hwc=0 \
    debug.sf.gpu_comp_tiling=1 \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    persist.graphics.vulkan.disable=true \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=300 \
    video.accelerate.hw=1

# LMKD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.critical_upgrade=true \
    ro.lmk.downgrade_pressure=60 \
    ro.lmk.kill_heaviest_task=false \
    ro.lmk.log_stats=true \
    ro.lmk.upgrade_pressure=40 \
    ro.lmk.use_psi=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    drm.service.enabled=1 \
    vidc.enc.narrow.searchrange=1

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.sys.fw.bservice_limit=5 \
    ro.vendor.qti.sys.fw.bservice_age=5000 \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.empty_app_percent=50 \
    ro.vendor.qti.sys.fw.trim_empty_percent=100 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.trim_enable_memory=1073741824

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8 \
    ro.core_ctl_min_cpu=0 \
    ro.core_ctl_max_cpu=4 \
    ro.min_freq_0=800000 \
    ro.vendor.extension_library=libqti-perfd-client.so 

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.data.target=dpm1 \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=0 \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    rild.libargs=-d[SPACE]/dev/smd0 \
    ril.subscription.types=NV,RUIM \
    ro.config.always_show_roaming=true \
    ro.telephony.default_network=9,1 \
    persist.data.netmgrd.qos.enable=false \
    ro.telephony.call_ring.multiple=false

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
