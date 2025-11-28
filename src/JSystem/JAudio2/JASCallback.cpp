#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JASCallback.h"
#include "JSystem/JAudio2/JASCriticalSection.h"

/* 8028FFA8-80290030 28A8E8 0088+00 0/0 2/2 0/0 .text            regist__14JASCallbackMgrFPFPv_lPv
 */
bool JASCallbackMgr::regist(JASCallback* callback, void* argument) {
	JASCriticalSection criticalSection;
	for (int i = 0; i < NUM_CALLBACKS; i++) {
		if (callbacks_[i].callback_ == NULL) {
			callbacks_[i].callback_ = callback;
			callbacks_[i].arg_ = argument;
			return true;
		}
	}

	return false;
}

/* 80290030-802900C4 28A970 0094+00 0/0 1/1 0/0 .text            reject__14JASCallbackMgrFPFPv_lPv
 */
int JASCallbackMgr::reject(JASCallback* callback, void* argument) {
	int rejectNum = 0;
	JASCriticalSection criticalSection;
	for (int i = 0; i < NUM_CALLBACKS; i++) {
		if (callbacks_[i].callback_ == callback && callbacks_[i].arg_ == argument) {
			callbacks_[i].callback_ = NULL;
			callbacks_[i].arg_ = NULL;
			rejectNum++;
		}
	}
	return rejectNum;
}

/* 802900C4-80290140 28AA04 007C+00 0/0 3/3 0/0 .text            callback__14JASCallbackMgrFv */
void JASCallbackMgr::callback() {
	for (int i = 0; i < NUM_CALLBACKS; i++) {
		if (callbacks_[i].callback_ && callbacks_[i].callback_(callbacks_[i].arg_) < 0) {
			callbacks_[i].callback_ = NULL;
			callbacks_[i].arg_ = NULL;
		}
	}
}
