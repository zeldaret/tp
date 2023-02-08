#ifndef JAISOUNDSTARTER_H
#define JAISOUNDSTARTER_H

#include "dolphin/types.h"
#include "JSystem/JAudio2/JAISound.h"

struct JAISoundStarter {
    /* 802A2F6C */ JAISoundStarter(bool);
    /* 802A2FEC */ void startLevelSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);

    virtual ~JAISoundStarter();
};

#endif /* JAISOUNDSTARTER_H */
