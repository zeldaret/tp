#ifndef JASCALLBACK_H
#define JASCALLBACK_H

#include "dolphin/types.h"

typedef long JASCallback(void*);

struct JASCallbackMgr {
	struct TCallback {
		TCallback()
		    : mFunction(NULL)
		    , mArgument(NULL) {
		}

		/** @fabricated */
		bool isMatch(JASCallback* function, void* argument) { return (mFunction == function && mArgument == argument); }

		/** @fabricated */
		void clear() {
			mFunction = NULL;
			mArgument = NULL;
		}

		/* 0x00 */ JASCallback* mFunction;
		/* 0x04 */ void* mArgument;
	};

	bool regist(JASCallback*, void*);
	int reject(JASCallback*, void*);
	void callback();

	/* 0x00 */ TCallback mCallbacks[0x20];
};

#endif /* JASCALLBACK_H */
