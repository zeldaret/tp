#ifndef NW4HBM_LYT_ANIMATION_H
#define NW4HBM_LYT_ANIMATION_H

#include <revolution/types.h>

#include "../macros.h"

#include "common.h"

#include "../ut/LinkList.h"

// context declarations
namespace nw4hbm { namespace lyt { class Material; }}
namespace nw4hbm { namespace lyt { class Pane; }}
namespace nw4hbm { namespace lyt { class ResourceAccessor; }}

namespace nw4hbm {
    namespace lyt {
        // forward declarations
        class AnimTransform;

        namespace res {
            struct AnimationBlock {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u16 frameSize;                // size 0x02, offset 0x08
                u8 loop;                      // size 0x01, offset 0x0a
                u8 padding1;
                u16 fileNum;                // size 0x02, offset 0x0c
                u16 animContNum;            // size 0x02, offset 0x0e
                u32 animContOffsetsOffset;  // size 0x04, offset 0x10
            };  // size 0x14

            struct AnimationContent {
                // enums
            public:
                typedef u8 ACType;
                enum ACType_et { ACType_Pane, ACType_Material };

                // static members
            public:
                static u32 const NAME_LENGTH = 20;

                // members
            public:
                char name[NAME_LENGTH];  // size 0x14, offset 0x00
                u8 num;                  // size 0x01, offset 0x14
                ACType type;             // size 0x01, offset 0x15
                u8 padding[2];
            };  // size 0x18

            // presumably PaneAnimInfo1. It fits, at least...
            static u32 const SIGNATURE_ANIM_INFO_BLOCK = NW4HBM_FOUR_CHAR('p', 'a', 'i', '1');

            struct AnimationInfo {
                // static members
            public:
                static u32 const SIGNATURE_PANE_PAIN_SRT_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'P', 'A');
                static u32 const SIGNATURE_PANE_VERTEX_COLOR_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'V', 'C');
                static u32 const SIGNATURE_PANE_VISIBILITY_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'V', 'I');

                static u32 const SIGNATURE_MATERIAL_IND_TEX_SRT_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'I', 'M');
                static u32 const SIGNATURE_MATERIAL_COLOR_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'M', 'C');
                static u32 const SIGNATURE_MATERIAL_TEXTURE_PATTERN_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'T', 'P');
                static u32 const SIGNATURE_MATERIAL_TEXTURE_SRT_INFO =
                    NW4HBM_FOUR_CHAR('R', 'L', 'T', 'S');

                // members
            public:
                u32 kind;  // size 0x04, offset 0x00
                u8 num;    // size 0x01, offset 0x04
                u8 padding[3];
            };  // size 0x08

            struct AnimationTarget {
                u8 id;         // size 0x01, offset 0x00
                u8 target;     // size 0x01, offset 0x01
                u8 curveType;  // size 0x01, offset 0x02
                u8 padding1;
                u16 keyNum;  // size 0x02, offset 0x04
                u8 padding2[2];
                u32 keysOffset;  // size 0x04, offset 0x08
            };  // size 0x0c

            struct HermiteKey {
                f32 frame;  // size 0x04, offset 0x00
                f32 value;  // size 0x04, offset 0x04
                f32 slope;  // size 0x04, offset 0x08
            };  // size 0x0c

            struct StepKey {
                f32 frame;  // size 0x04, offset 0x00
                u16 value;  // size 0x02, offset 0x04
                u16 padding;
            };  // size 0x08

            static u32 const SIGNATURE_ANIMATION = NW4HBM_FOUR_CHAR('R', 'L', 'A', 'N');
        }  // namespace res

        class AnimationLink {
            // typedefs
        public:
            /* offsetof(AnimationLink, mLink) */
            typedef ut::LinkList<AnimationLink, 0> LinkList;

            // methods
        public:
            // cdtors
            AnimationLink() : mbDisable(FALSE) { Reset(); }

            /* ~AnimationLink() = default; */

            // methods
            AnimTransform* GetAnimTransform() const { return mAnimTrans; }
            u16 GetIndex() const { return mIdx; }
            bool IsEnable() const { return !mbDisable; }

            void SetAnimTransform(AnimTransform* animTrans, u16 idx) {
                mAnimTrans = animTrans;
                mIdx = idx;
            }

            void SetEnable(bool bEnable) { mbDisable = !bEnable; }

            void Reset() { SetAnimTransform(NULL, 0); }

            // members
        private:
            ut::LinkListNode mLink;     // size 0x08, offset 0x00
            AnimTransform* mAnimTrans;  // size 0x04, offset 0x08
            u16 mIdx;                   // size 0x02, offset 0x0c
            bool mbDisable;             // size 0x01, offset 0x0e
                                        /* 1 byte padding */
        };  // size 0x10

        class AnimTransform {
            // typedefs
        public:
            /* offsetof(AnimTransform, mLink) */
            typedef ut::LinkList<AnimTransform, 4> LinkList;

            // methods
        public:
            // cdtors
            AnimTransform();
            virtual ~AnimTransform();

            // virtual function ordering
            // vtable AnimTransform
            virtual void SetResource(res::AnimationBlock const* pRes,
                                     ResourceAccessor* pResAccessor) = 0;
            virtual void Bind(Pane* pPane, bool bRecursive) = 0;
            virtual void Bind(Material* pMaterial) = 0;
            virtual void Animate(u32 idx, Pane* pPane) = 0;
            virtual void Animate(u32 idx, Material* pMaterial) = 0;

            // methods
            f32 GetFrameMax() const { return static_cast<f32>(GetFrameSize()); }
            u16 GetFrameSize() const;

            void SetFrame(f32 frame) { mFrame = frame; }

            bool IsLoopData() const;

            // members
        protected:                             // AnimTransformBasic::SetResource
            /* vtable */                       // size 0x04, offset 0x00
            ut::LinkListNode mLink;            // size 0x08, offset 0x04
            res::AnimationBlock const* mpRes;  // size 0x04, offset 0x0c
            f32 mFrame;                        // size 0x04, offset 0x10
        };  // size 0x14

        class AnimTransformBasic : public AnimTransform {
            // methods
        public:
            // cdtors
            AnimTransformBasic();
            virtual ~AnimTransformBasic();

            // virtual function ordering
            // vtable AnimTransform
            virtual void SetResource(res::AnimationBlock const* pRes,
                                     ResourceAccessor* pResAccessor);
            virtual void Bind(Pane* pPane, bool bRecursive);
            virtual void Bind(Material* pMaterial);
            virtual void Animate(u32 idx, Pane* pPane);
            virtual void Animate(u32 idx, Material* pMaterial);

            // members
        private:
            /* base AnimTransform */      // size 0x14, offset 0x00
            void** mpFileResAry;          // size 0x04, offset 0x14
            AnimationLink* mAnimLinkAry;  // size 0x04, offset 0x18
            u16 mAnimLinkNum;             // size 0x02, offset 0x1c
                                          /* 2 bytes padding */
        };  // size 0x20

        namespace detail {
            AnimationLink* FindAnimationLink(AnimationLink::LinkList* pAnimList,
                                             AnimTransform* pAnimTrans);
        }  // namespace detail
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_ANIMATION_H
