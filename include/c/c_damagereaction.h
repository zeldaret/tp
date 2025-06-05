#ifndef C_C_DAMAGEREACTION_H
#define C_C_DAMAGEREACTION_H

#include "JSystem/JParticle/JPAParticle.h"

class JPTraceParticleCallBack4 : JPAParticleCallBack {
public:
    /* 8001817C */ void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 800182A4 */ void draw(JPABaseEmitter*, JPABaseParticle*);
    /* 80018328 */ ~JPTraceParticleCallBack4() {}
};

BOOL cDmrNowMidnaTalk();

extern u8 cDmr_SkipInfo;
extern u8 data_80450C99;
extern u8 data_80450C9A;
extern u8 data_80450C9B;
extern u8 data_80450C9C;
extern u8 data_80450C9D;
extern u8 data_80450C9E;
extern u8 cDmr_FishingWeather;
extern u8 data_80450CA0;
extern JPTraceParticleCallBack4 JPTracePCB4;

#endif /* C_C_DAMAGEREACTION_H */
