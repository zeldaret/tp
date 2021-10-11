#ifndef J3DANMLOADER_H
#define J3DANMLOADER_H

#include "dolphin/types.h"

struct J3DAnmLoaderDataBaseFlag {};

struct J3DAnmBase;

struct J3DAnmLoaderDataBase {
    /* 80337B40 */ void load(void const*, J3DAnmLoaderDataBaseFlag);
    /* 80338134 */ void setResource(J3DAnmBase*, void const*);
};

#endif /* J3DANMLOADER_H */
