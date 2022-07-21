#ifndef JSTUDIO_JPARTICLE_CONTROL_H
#define JSTUDIO_JPARTICLE_CONTROL_H

#include "JSystem/JParticle/JPAParticle.h"
#include "JSystem/JStage/JSGSystem.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"
#include "dolphin/types.h"

namespace JStudio_JParticle {
struct TCreateObject : public JStudio::TCreateObject {
    /* 8028E3A0 */ virtual ~TCreateObject();
    /* 8028E400 */ virtual void create(JStudio::TObject**,
                                       JStudio::stb::data::TParse_TBlock_object const&);
    /* 8028E474 */ virtual void emitter_create(u32);
    /* 8028E4E4 */ virtual void emitter_destroy(JPABaseEmitter*);

    /* 8028E508 */ void createObject_JPA_PARTICLE_(JStudio::stb::data::TParse_TBlock_object const&,
                                                   JStudio_JParticle::TCreateObject*);

    /* 0x0C */ JPAEmitterManager* pJPAEmitterManager_;
    /* 0x10 */ JStage::TSystem* pJSGSystem_;
    /* 0x14 */ bool mPermit_onExit_notEnd;
};

struct TAdaptor_particle : public JStudio::TAdaptor_particle {
    struct TJPACallback_emitter_ {
        /* 8028E700 */ ~TJPACallback_emitter_();
        /* 8028ECC0 */ void execute(JPABaseEmitter*);
        /* 8028F060 */ void executeAfter(JPABaseEmitter*);
        /* 8028F098 */ void draw(JPABaseEmitter*);
        /* 8028F0D0 */ void drawAfter(JPABaseEmitter*);
    };

    /* 8028E60C */ TAdaptor_particle(JStudio_JParticle::TCreateObject*);
    /* 8028F108 */ void beginParticle_fadeIn_();
    /* 8028F1C0 */ void endParticle_fadeOut_(u32);

    /* 8028E760 */ virtual ~TAdaptor_particle();
    /* 8028E850 */ virtual void adaptor_do_prepare();
    /* 8028E97C */ virtual void adaptor_do_end();
    /* 8028E980 */ virtual void adaptor_do_update(u32);
    /* 8028EA68 */ virtual void adaptor_do_PARTICLE(JStudio::data::TEOperationData, void const*, u32);
    /* 8028EA7C */ virtual void adaptor_do_BEGIN(JStudio::data::TEOperationData, void const*, u32);
    /* 8028EAB0 */ virtual void adaptor_do_BEGIN_FADE_IN(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028EAF8 */ virtual void adaptor_do_END(JStudio::data::TEOperationData, void const*, u32);
    /* 8028EB24 */ virtual void adaptor_do_END_FADE_OUT(JStudio::data::TEOperationData, void const*,
                                                u32);
    /* 8028EB6C */ virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028EBD8 */ virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, void const*,
                                                u32);
    /* 8028EC58 */ virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028EC74 */ virtual void adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028EC88 */ virtual void adaptor_do_REPEAT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028ECA4 */ virtual void adaptor_do_ON_EXIT_NOT_END(JStudio::data::TEOperationData, void const*,
                                                    u32);
};

};  // namespace JStudio_JParticle

#endif /* JSTUDIO_JPARTICLE_CONTROL_H */
