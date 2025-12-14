#ifndef NW4HBM_LYT_WINDOW_H
#define NW4HBM_LYT_WINDOW_H

#include <revolution/types.h>

#include "../macros.h"

#include "animation.h"
#include "common.h"
#include "pane.h"

#include "../ut/Color.h"

// context declarations
namespace nw4hbm { namespace lyt { struct ResBlockSet; }}
namespace nw4hbm { namespace lyt { class Material; }}
namespace nw4hbm { namespace math { struct VEC2; }}
namespace nw4hbm { namespace ut { namespace detail { class RuntimeTypeInfo; }}}

namespace nw4hbm {
    namespace lyt {
        struct InflationLRTB {
            f32 l;  // size 0x04, offset 0x00
            f32 r;  // size 0x04, offset 0x04
            f32 t;  // size 0x04, offset 0x08
            f32 b;  // size 0x04, offset 0x0c
        };  // size 0x10

        struct WindowFrameSize {
            f32 l;  // size 0x04, offset 0x00
            f32 r;  // size 0x04, offset 0x04
            f32 t;  // size 0x04, offset 0x08
            f32 b;  // size 0x04, offset 0x0c
        };  // size 0x10

        namespace res {
            static u32 const SIGNATURE_WINDOW_BLOCK = NW4HBM_FOUR_CHAR('w', 'n', 'd', '1');

            struct Window : public Pane {
                /* base Pane */           // size 0x4c, offset 0x00
                InflationLRTB inflation;  // size 0x10, offset 0x4c
                u8 frameNum;              // size 0x01, offset 0x5c
                u8 padding1;
                u8 padding2;
                u8 padding3;
                u32 contentOffset;           // size 0x04, offset 0x60
                u32 frameOffsetTableOffset;  // size 0x04, offset 0x64
            };  // size 0x68

            struct WindowFrame {
                u16 materialIdx;  // size 0x02, offset 0x00
                u8 textureFlip;   // size 0x01, offset 0x02
                u8 padding1;
            };  // size 0x04

            struct WindowContent {
                u32 vtxCols[4];   // size 0x10, offset 0x00
                u16 materialIdx;  // size 0x02, offset 0x10
                u8 texCoordNum;   // size 0x01, offset 0x12
                u8 padding[1];
            };  // size 0x14
        }  // namespace res

        class Window : public Pane {
            // nested types
        private:
            struct Content {
                ut::Color vtxColors[4];           // size 0x10, offset 0x00
                detail::TexCoordAry texCoordAry;  // size 0x08, offset 0x10
            };  // size 0x18

            struct Frame {
                u8 textureFlip;  // size 0x01, offset 0x00
                /* 3 bytes padding */
                Material* pMaterial;  // size 0x04, offset 0x04
            };  // size 0x08

            // methods
        public:
            // cdtors
            Window(res::Window const* pBlock, ResBlockSet const& resBlockSet);
            virtual ~Window();

            // virtual function ordering
            // vtable Pane
            virtual ut::detail::RuntimeTypeInfo const* GetRuntimeTypeInfo() const {
                return &typeInfo;
            }

            virtual void DrawSelf(DrawInfo const& drawInfo);
            virtual void AnimateSelf(u32 option);
            virtual ut::Color GetVtxColor(u32 idx) const;
            virtual void SetVtxColor(u32 idx, ut::Color value);
            virtual u8 GetVtxColorElement(u32 idx) const;
            virtual void SetVtxColorElement(u32 idx, u8 value);
            virtual Material* FindMaterialByName(char const* findName, bool bRecursive);
            virtual void UnbindAnimationSelf(AnimTransform* pAnimTrans);
            virtual AnimationLink* FindAnimationLink(AnimTransform* pAnimTrans);
            virtual void SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable,
                                            bool bRecursive);

            // vtable Window
            virtual Material* GetContentMaterial() const;
            virtual Material* GetFrameMaterial(u32 frameIdx) const;
            virtual void DrawContent(math::VEC2 const& basePt, WindowFrameSize const& frameSize,
                                     u8 alpha);
            virtual void DrawFrame(math::VEC2 const& basePt, Frame const& frame,
                                   WindowFrameSize const& frameSize, u8 alpha);
            virtual void DrawFrame4(math::VEC2 const& basePt, Frame const* frames,
                                    WindowFrameSize const& frameSize, u8 alpha);
            virtual void DrawFrame8(math::VEC2 const& basePt, Frame const* frames,
                                    WindowFrameSize const& frameSize, u8 alpha);

            // methods
            WindowFrameSize GetFrameSize(u8 frameNum, Frame const* frames);

            // static members
        public:
            static ut::detail::RuntimeTypeInfo const typeInfo;

            // members
        private:
            /* base Pane */                   // size 0x0d4, offset 0x000
            InflationLRTB mContentInflation;  // size 0x010, offset 0x0d4
            Content mContent;                 // size 0x018, offset 0x0e4
            Frame* mFrames;                   // size 0x004, offset 0x0fc
            u8 mFrameNum;                     // size 0x001, offset 0x100
                                              /* 3 bytes padding */
        };  // size 0x104
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_WINDOW_H
