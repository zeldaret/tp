//
// jstudio-control
//

#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/jstudio-control.h"
#include "JSystem/JStudio/JStudio/jstudio-math.h"
#include "JSystem/JStudio/JStudio/jstudio-data.h"
#include <cstring>

JStudio::TControl::TControl() {
    mTransformOnSet = false;
    mTransformOnGet = false;
    Vec aVStack_20 = {0.0f,0.0f,0.0f};
    transform_setOrigin_TxyzRy(aVStack_20, 0.0f);
}

JStudio::TControl::~TControl() {}

void JStudio::TControl::setFactory(JStudio::TFactory* factory) {
    fvb::TFactory* fvbFactory = NULL;
    ctb::TFactory* ctbFactory = NULL;
    if (factory != NULL) {
        fvbFactory = &factory->fvb_Factory;
        ctbFactory = &factory->ctb_Factory;
    }
    stb::TControl::setFactory(factory);
    fvb_Control.setFactory(fvbFactory);
    ctb_Control.setFactory(ctbFactory);
}

int JStudio::TControl::transformOnSet_setOrigin_TxyzRy(Vec const& param_0, f32 param_1) {
    field_0x8c = param_0;
    mTransformOnSet_RotationY = param_1;
    JStudio::math::getTransformation_RyT(mTransformOnSet_Matrix, param_1, param_0);
    return 1;
}

int JStudio::TControl::transformOnGet_setOrigin_TxyzRy(Vec const& param_0, f32 param_1) {
    field_0x98 =  param_0;
    mTransformOnGet_RotationY = param_1;
    Mtx afStack_48;
    MTXTrans(afStack_48, -param_0.x, -param_0.y, -param_0.z);
    math::rotate_y(mTransformOnGet_Matrix, afStack_48, -param_1);
    return 1;
}

int JStudio::TControl::transform_setOrigin_ctb(JStudio::ctb::TObject const& param_0) {
    int scheme = param_0.getScheme();
    switch (scheme) {
    case 1: {
        const f32* pfVar4 = (const f32*)param_0.getData();
        Vec local_144 = {pfVar4[0], pfVar4[1], pfVar4[2]};
        transform_setOrigin_TxyzRy(local_144, pfVar4[3]);
        break;
    }
    default:
        JGADGET_WARNMSG1(183, "unknown scheme : ", scheme);
        return 0;
    }
    return 1;
}

bool JStudio::TControl::transform_setOrigin_ctb_index(u32 index) {
    ctb::TObject* object = ctb_getObject_index(index);
    if (object == NULL) {
        return false;
    }
    transform_setOrigin_ctb(*object);
    return true;
}

JStudio::TCreateObject::~TCreateObject() {}

JStudio::TFactory::~TFactory() {}

void JStudio::TFactory::appendCreateObject(JStudio::TCreateObject* p) {
    JUT_ASSERT(227, p!=NULL);
    mList.Push_back(p);
}


JStudio::TObject* JStudio::TFactory::create(JStudio::stb::data::TParse_TBlock_object const& rParse) {
    JGadget::TContainerEnumerator<JGadget::TLinkList<TCreateObject, -4> > aTStack_368(mList);
    while(aTStack_368) {
        TCreateObject& piVar1 = *aTStack_368;
        JStudio::TObject* obj;
        if (piVar1.create(&obj, rParse)) {
            return obj;
        }
    }
#if DEBUG
    char a5c[8];
    stb::data::toString_block(a5c, rParse.get_type());
    const char* szID = (const char*)rParse.get_ID();
    JGADGET_ASSERTWARN(0x108, rParse.get_IDSize()>0);
    JGADGET_ASSERTWARN(0x109, szID[rParse.get_IDSize()-1]=='\0');
    JGADGET_WARNMSG3(0x10c, "ID not found\n  demo-object : ", szID, "\n  type : ", a5c);
#endif
    return NULL;
}

JStudio::TParse::TParse(JStudio::TControl* param_0) : stb::TParse(param_0) {
}

JStudio::TParse::~TParse() {}

bool JStudio::TParse::parseHeader(JStudio::stb::data::TParse_THeader const& param_0,
                                      u32 param_1) {
    const JStudio::stb::data::THeader::Target& target = param_0.get_target();
    if (memcmp(target.name, JStudio::data::ga8cSignature, sizeof(JStudio::data::ga8cSignature)) != 0) {
        JGADGET_WARNMSG(304, "unknown target-system");
        return false;
    }
    u32 version = target.target_version;
    if (version < 2) {
        JGADGET_WARNMSG1(312, "obsolete version : ", version);
        return false;
    }
    if (version > 6) {
        JGADGET_WARNMSG1(317, "unknown version : ", version);
        return false;
    }
    JStudio::TControl* pControl = getControl();
    JUT_ASSERT(322, pControl!=NULL);
    if ((param_1 & 0x100) == 0) {
        Vec local_468 = {0.0f, 0.0f, 0.0f};
        if (!pControl->transform_setOrigin_TxyzRy(local_468, 0.0f)) {
            JGADGET_WARNMSG(329, "invalid coordinate-transformation");
            return false;
        }

        pControl->transform_enable(false);
    }
    return true;
}

bool JStudio::TParse::parseBlock_block(JStudio::stb::data::TParse_TBlock const& param_0,
                                           u32 param_1) {
    u32 type = param_0.get_type();
    switch(type) {
    case 'JFVB':
        return parseBlock_block_fvb_(param_0, param_1);
    case 'JCTB':
        return parseBlock_block_ctb_(param_0, param_1);
    default:
        return stb::TParse::parseBlock_block(param_0, param_1);
    }
}

bool JStudio::TParse::parseBlock_block_fvb_(JStudio::stb::data::TParse_TBlock const& param_0,
                                                u32 param_1) {
    TControl* pControl = getControl();
    JUT_ASSERT(361, pControl!=NULL);
    const void* pContent = param_0.getContent();
    JUT_ASSERT(363, pContent!=NULL);
    u32 uVar4 = param_1 & 0xf;
    if ((param_1 & 0x10) != 0) {
        uVar4 |= 0x10;
    }
    if ((param_1 & 0x20) != 0) {
        uVar4 |= 0x20;
    }
    if ((param_1 & 0x40) != 0) {
        uVar4 |= 0x40;
    }
    fvb::TControl* control = &pControl->fvb_Control;
    fvb::TParse aTStack_30(control);
    if (!aTStack_30.parse(pContent, uVar4)) {
        return false;
    } 
    return true;
}

bool JStudio::TParse::parseBlock_block_ctb_(JStudio::stb::data::TParse_TBlock const& param_0,
                                                u32 param_1) {
    TControl* pControl = getControl();
    JUT_ASSERT(386, pControl!=NULL);
    const void* pContent = param_0.getContent();
    JUT_ASSERT(388, pContent!=NULL);
    u32 uVar4 = param_1 & 0xf;
    if ((param_1 & 0x10) != 0) {
        uVar4 |= 0x10;
    }
    if ((param_1 & 0x20) != 0) {
        uVar4 |= 0x20;
    }
    if ((param_1 & 0x40) != 0) {
        uVar4 |= 0x40;
    }
    ctb::TControl* control = &pControl->ctb_Control;
    ctb::TParse aTStack_30(control);
    if (!aTStack_30.parse(pContent, uVar4)) {
        return false;
    }
    if ((param_1 & 0x200) == 0) {
        if (pControl->transform_setOrigin_ctb_index(0) == 0) {
            JGADGET_WARNMSG(407, "invalid coordinate-transformation");
            return 0;
        }
        pControl->transform_enable(true);
    }
    return true;
}
