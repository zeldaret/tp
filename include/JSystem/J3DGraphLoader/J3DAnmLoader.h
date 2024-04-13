#ifndef J3DANMLOADER_H
#define J3DANMLOADER_H


enum J3DAnmLoaderDataBaseFlag {
    J3DLOADER_UNK_FLAG0,
    J3DLOADER_UNK_FLAG1,
};

class J3DAnmBase;

/**
 * @ingroup jsystem-j3d
 * 
 */
struct J3DAnmLoaderDataBase {
    /* 80337B40 */ static J3DAnmBase* load(void const*, J3DAnmLoaderDataBaseFlag);
    /* 80338134 */ static void setResource(J3DAnmBase*, void const*);

    static J3DAnmBase* load(void const* param_0) { return load(param_0, J3DLOADER_UNK_FLAG0); }
};

#endif /* J3DANMLOADER_H */
