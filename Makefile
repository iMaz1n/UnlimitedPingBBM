THEOS_BUILD_DIR = debs

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UnlimitedPingBBM
UnlimitedPingBBM_FILES = Tweak.xm
UnlimitedPingBBM_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
