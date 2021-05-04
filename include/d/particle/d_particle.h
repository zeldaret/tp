#ifndef D_PARTICLE_D_PARTICLE_H
#define D_PARTICLE_D_PARTICLE_H

#include "JSystem/JParticle/JPAParticle.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class JPAEmitterCallBack {
public:
    /* 80050368 */ void execute(JPABaseEmitter*);
    /* 8005036C */ void draw(JPABaseEmitter*);
    /* 80050370 */ void drawAfter(JPABaseEmitter*);
    /* 80050374 */ void executeAfter(JPABaseEmitter*);
    /* 8027E6A4 */ ~JPAEmitterCallBack();
};

class dPa_levelEcallBack : public JPAEmitterCallBack {
public:
    /* 8004FB18 */ ~dPa_levelEcallBack();
    /* 8004FB8C */ void cleanup();
};

class dPa_hermiteEcallBack_c : public dPa_levelEcallBack {
public:
    /* 8004F6B8 */ void setOldPosP(cXyz const*, cXyz const*);
    /* 8004F6C4 */ void executeAfter(JPABaseEmitter*);
    /* 8004FABC */ void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);
    /* 8004FCC8 */ ~dPa_hermiteEcallBack_c();

private:
    /* 0x00 */ void* vtable;
    /* 0x04 */ float mRate;
    /* 0x08 */ int mMaxCnt;
    /* 0x0C */ cXyz* field_0xc;
    /* 0x10 */ cXyz* field_0x10;
    /* 0x14 */ cXyz* field_0x14;
};

#endif /* D_PARTICLE_D_PARTICLE_H */
