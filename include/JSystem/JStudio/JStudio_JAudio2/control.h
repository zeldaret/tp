#ifndef JSTUDIO_JAUDIO2_CONTROL_H
#define JSTUDIO_JAUDIO2_CONTROL_H

#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "JSystem/JStage/JSGSystem.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"

namespace JStudio_JAudio2 {
struct TCreateObject : public JStudio::TCreateObject {
    TCreateObject(JAISoundStarter* p_soundStarter, const JStage::TSystem* p_system) {
        pJAISoundStarter_ = p_soundStarter;
        pJSGSystem_ = p_system;
        mPermit_onExit_notEnd = false;
    }

    /* 8028D550 */ virtual ~TCreateObject();
    /* 8028D5B0 */ virtual bool create(JStudio::TObject**,
                                       JStudio::stb::data::TParse_TBlock_object const&);
    /* 8028D624 */ void createObject_JAI_SOUND_(JStudio::stb::data::TParse_TBlock_object const&,
                                                JStudio_JAudio2::TCreateObject*);

    /* 0x0C */ JAISoundStarter* pJAISoundStarter_;
    /* 0x10 */ const JStage::TSystem* pJSGSystem_;
    /* 0x14 */ bool mPermit_onExit_notEnd;
};

struct TAdaptor_sound : public JStudio::TAdaptor_sound {
    struct TVVOSetValue_ {
        /* 8028DECC */ void operator()(f32, JStudio::TAdaptor*) const;
        /* 8028E094 */ ~TVVOSetValue_();
    };

    /* 8028D828 */ TAdaptor_sound(JStudio_JAudio2::TCreateObject*);
    /* 8028DF04 */ void prepareSound_();
    /* 8028DFA4 */ void beginSound_fadeIn_();
    /* 8028E054 */ void endSound_fadeOut_(u32);

    /* 8028D8F4 */ virtual ~TAdaptor_sound();
    /* 8028D9A4 */ virtual void adaptor_do_prepare();
    /* 8028DA74 */ virtual void adaptor_do_end();
    /* 8028DA78 */ virtual void adaptor_do_update(u32);
    /* 8028DC20 */ virtual void adaptor_do_SOUND(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DC54 */ virtual void adaptor_do_BEGIN(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DC88 */ virtual void adaptor_do_BEGIN_FADE_IN(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028DCD0 */ virtual void adaptor_do_END(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DD00 */ virtual void adaptor_do_END_FADE_OUT(JStudio::data::TEOperationData, void const*,
                                                u32);
    /* 8028DD48 */ virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DDB4 */ virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, void const*,
                                                u32);
    /* 8028DE34 */ virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028DE50 */ virtual void adaptor_do_REPEAT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DE6C */ virtual void adaptor_do_CONTINUOUS(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DE88 */ virtual void adaptor_do_LOCATED(JStudio::data::TEOperationData, void const*, u32);
    /* 8028DEB0 */ virtual void adaptor_do_ON_EXIT_NOT_END(JStudio::data::TEOperationData, void const*,
                                                    u32);

    static u8 saoVVOSetValue_[72];

    /* 0x114 */ TCreateObject* pCreateObject_;
    /* 0x118 */ JAISoundHandle opJAISoundHandle_;
    /* 0x11C */ u8 field_0x11c;
    /* 0x11D */ u8 field_0x11d;
    /* 0x11E */ u8 field_0x11e;
    /* 0x11F */ u8 field_0x11f;
    /* 0x120 */ u8 field_0x120;
    /* 0x124 */ u32 field_0x124;
    /* 0x128 */ u32 field_0x128;
    /* 0x12C */ u32 field_0x12c;
    /* 0x130 */ JGeometry::TVec3<f32> field_0x130;
    /* 0x13C */ u32 field_0x13c;
    /* 0x140 */ u32 field_0x140;
    /* 0x144 */ u8 field_0x144;
};
};  // namespace JStudio_JAudio2

#endif /* JSTUDIO_JAUDIO2_CONTROL_H */
