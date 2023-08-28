#ifndef J3DANMLOADER_H
#define J3DANMLOADER_H

#include "dolphin/types.h"

enum J3DAnmLoaderDataBaseFlag { J3DLOADER_UNK_FLAG0 };

struct J3DAnmBase;

struct J3DAnmLoaderDataBase {
    /* 80337B40 */ static void* load(void const*, J3DAnmLoaderDataBaseFlag);
    /* 80338134 */ static void setResource(J3DAnmBase*, void const*);

    static void* load(void const* param_0) { return load(param_0, J3DLOADER_UNK_FLAG0); }
};

#endif /* J3DANMLOADER_H */
