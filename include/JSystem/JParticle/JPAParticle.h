#ifndef JPAPARTICLE_H
#define JPAPARTICLE_H

#include "dolphin/types.h"

class JPABaseParticle;

struct JPABaseEmitter {
    /* 8027EB60 */ void createChild(JPABaseParticle*);
};

class JPAParticleCallBack {
public:
    virtual void temp(); // temp to build OK, remove later
    ~JPAParticleCallBack();
    virtual void draw(JPABaseEmitter*, JPABaseParticle*);
    virtual void execute(JPABaseEmitter*, JPABaseParticle*);
};

#endif /* JPAPARTICLE_H */
