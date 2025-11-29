#ifndef JAISOUNDSTARTER_H
#define JAISOUNDSTARTER_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISoundStarter : public JASGlobalInstance<JAISoundStarter> {
    /* 802A2F6C */ JAISoundStarter(bool);

    virtual ~JAISoundStarter();
    virtual bool startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*) = 0;
    /* 802A2FEC */ bool startLevelSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
};

#endif /* JAISOUNDSTARTER_H */
