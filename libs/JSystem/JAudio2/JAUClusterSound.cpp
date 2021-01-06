#include "JSystem/JAudio2/JAUClusterSound/JAUClusterSound.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"

//! @meme: mwcc normally inlines this, but drops it this TU because it's the
//!        first place we need a ref to this ctor.
//! @todo: eventually move this into JAISound.h once this file is decomped.
JAISoundHandle::JAISoundHandle() {
    this->mSound = NULL;
}