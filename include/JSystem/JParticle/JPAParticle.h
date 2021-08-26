#ifndef JPAPARTICLE_H
#define JPAPARTICLE_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

class JPABaseParticle;

struct JPABaseEmitter {
    /* 8027EB60 */ void createChild(JPABaseParticle*);
    /* 8027EA40 */ void createParticle();
    /* 8027EF30 */ void getCurrentCreateNumber() const;
    /* 8027EF40 */ void getDrawCount() const;
    /* 8027EF50 */ void loadTexture(u8, _GXTexMapID);
};

class JPAParticleCallBack {
public:
    virtual void temp();  // temp to build OK, remove later
    ~JPAParticleCallBack();
    virtual void draw(JPABaseEmitter*, JPABaseParticle*);
    virtual void execute(JPABaseEmitter*, JPABaseParticle*);
};

#endif /* JPAPARTICLE_H */
