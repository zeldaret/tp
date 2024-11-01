#ifndef J3DANMLOADER_H
#define J3DANMLOADER_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"

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

class J3DAnmLoader {
public:
    virtual J3DAnmBase* load(const void*) = 0;
    virtual void setResource(J3DAnmBase*, const void*) = 0;
    /* 80339800 */ virtual ~J3DAnmLoader() {}
};

class J3DAnmKeyLoader_v15 : public J3DAnmLoader {
public:
    /* 803384E0 */ J3DAnmKeyLoader_v15();
    /* 80338FEC */ void readAnmTransform(J3DAnmTransformKeyData const*);
    /* 80339014 */ void setAnmTransform(J3DAnmTransformKey*, J3DAnmTransformKeyData const*);
    /* 803390B0 */ void readAnmTextureSRT(J3DAnmTextureSRTKeyData const*);
    /* 803390D8 */ void setAnmTextureSRT(J3DAnmTextureSRTKey*, J3DAnmTextureSRTKeyData const*);
    /* 803392B0 */ void readAnmColor(J3DAnmColorKeyData const*);
    /* 803392D8 */ void setAnmColor(J3DAnmColorKey*, J3DAnmColorKeyData const*);
    /* 803393C4 */ void readAnmCluster(J3DAnmClusterKeyData const*);
    /* 803393EC */ void setAnmCluster(J3DAnmClusterKey*, J3DAnmClusterKeyData const*);
    /* 80339458 */ void readAnmTevReg(J3DAnmTevRegKeyData const*);
    /* 80339480 */ void setAnmTevReg(J3DAnmTevRegKey*, J3DAnmTevRegKeyData const*);
    /* 8033960C */ void readAnmVtxColor(J3DAnmVtxColorKeyData const*);
    /* 80339634 */ void setAnmVtxColor(J3DAnmVtxColorKey*, J3DAnmVtxColorKeyData const*);

    /* 80338D44 */ virtual J3DAnmBase* load(void const*);
    /* 80338E8C */ virtual void setResource(J3DAnmBase*, void const*);
    /* 803384FC */ virtual ~J3DAnmKeyLoader_v15();

    /* 0x4 */ J3DAnmBase* mAnm;
};

class J3DAnmFullLoader_v15 : public J3DAnmLoader {
public:
    /* 80338468 */ J3DAnmFullLoader_v15();
    /* 80338800 */ void readAnmTransform(J3DAnmTransformFullData const*);
    /* 80338828 */ void setAnmTransform(J3DAnmTransformFull*, J3DAnmTransformFullData const*);
    /* 803388BC */ void readAnmColor(J3DAnmColorFullData const*);
    /* 803388E4 */ void setAnmColor(J3DAnmColorFull*, J3DAnmColorFullData const*);
    /* 803389B0 */ void readAnmTexPattern(J3DAnmTexPatternFullData const*);
    /* 803389D8 */ void setAnmTexPattern(J3DAnmTexPattern*, J3DAnmTexPatternFullData const*);
    /* 80338A7C */ void readAnmVisibility(J3DAnmVisibilityFullData const*);
    /* 80338AA4 */ void setAnmVisibility(J3DAnmVisibilityFull*, J3DAnmVisibilityFullData const*);
    /* 80338B20 */ void readAnmCluster(J3DAnmClusterFullData const*);
    /* 80338B48 */ void setAnmCluster(J3DAnmClusterFull*, J3DAnmClusterFullData const*);
    /* 80338BB4 */ void readAnmVtxColor(J3DAnmVtxColorFullData const*);
    /* 80338BDC */ void setAnmVtxColor(J3DAnmVtxColorFull*, J3DAnmVtxColorFullData const*);

    /* 80338558 */ virtual J3DAnmBase* load(void const*);
    /* 803386A0 */ virtual void setResource(J3DAnmBase*, void const*);
    /* 80338484 */ virtual ~J3DAnmFullLoader_v15();

    /* 0x4 */ J3DAnmBase* mAnm;
};

#endif /* J3DANMLOADER_H */
