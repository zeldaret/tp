#ifndef JPARESOURCELOADER_H
#define JPARESOURCELOADER_H

#include "dolphin/types.h"

class JPAResourceManager;

class JPAResourceLoader {
public:
    /* 8027D8A0 */ JPAResourceLoader(u8 const*, JPAResourceManager*);
    /* 8027D8E0 */ void load_jpc(u8 const*, JPAResourceManager*);
};

#endif /* JPARESOURCELOADER_H */
