#ifndef C_C_DAMAGEREACTION_H
#define C_C_DAMAGEREACTION_H

#include "JSystem/JParticle/JPAParticle.h"

class JPTraceParticleCallBack4 /* : JPAParticleCallBack */ {
public:
    /* 8001817C */ void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 800182A4 */ void draw(JPABaseEmitter*, JPABaseParticle*);
    /* 80018328 */ ~JPTraceParticleCallBack4();
};

BOOL cDmrNowMidnaTalk();

extern u8 cDmr_SkipInfo;

#endif /* C_C_DAMAGEREACTION_H */
