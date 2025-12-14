#ifndef NW4HBM_LYT_PICTURE_H
#define NW4HBM_LYT_PICTURE_H

#include <revolution/types.h>

#include "../macros.h"

#include "common.h"
#include "pane.h"

#include "../ut/Color.h"

#include <revolution/tpl.h>
#include <revolution/gx/GXStruct.h>

// context declarations
namespace nw4hbm { namespace lyt { struct ResBlockSet; }}
namespace nw4hbm { namespace math { struct VEC2; }}
namespace nw4hbm { namespace ut { namespace detail { class RuntimeTypeInfo; }}}

namespace nw4hbm {
    namespace lyt {
        namespace res {
            static u32 const SIGNATURE_PICTURE_BLOCK = NW4HBM_FOUR_CHAR('p', 'i', 'c', '1');

            struct Picture : public Pane {
                /* base Pane */   // size 0x4c, offset 0x00
                u32 vtxCols[4];   // size 0x10, offset 0x4c
                u16 materialIdx;  // size 0x02, offset 0x5c
                u8 texCoordNum;   // size 0x01, offset 0x5e
                u8 padding[1];
            };  // size 0x60
        }  // namespace res

        class Picture : public Pane {
            // methods
        public:
            // cdtors
            Picture(u8 texNum);
            Picture(TPLPalette* pTplRes);
            Picture(GXTexObj const& texObj);
            Picture(res::Picture const* pResPic, ResBlockSet const& resBlockSet);
            virtual ~Picture();

            // virtual function ordering
            // vtable Pane
            virtual ut::detail::RuntimeTypeInfo const* GetRuntimeTypeInfo() const {
                return &typeInfo;
            }

            virtual void DrawSelf(DrawInfo const& drawInfo);
            virtual ut::Color GetVtxColor(u32 idx) const;
            virtual void SetVtxColor(u32 idx, ut::Color value);
            virtual u8 GetVtxColorElement(u32 idx) const;
            virtual void SetVtxColorElement(u32 idx, u8 value);

            // vtable Picture
            virtual void Append(TPLPalette* pTplRes);
            virtual void Append(GXTexObj const& texObj);

            // methods
            u8 GetTexCoordNum() const;
            void GetTexCoord(u32 idx, math::VEC2* coords) const;

            void SetTexCoordNum(u8 num);
            void SetTexCoord(u32 idx, math::VEC2 const* coords);

            void Init(u8 texNum);
            void ReserveTexCoord(u8 num);

            // static members
        public:
            static ut::detail::RuntimeTypeInfo const typeInfo;

            // members
        private:
            /* base Pane */                    // size 0xd4, offset 0x00
            ut::Color mVtxColors[4];           // size 0x10, offset 0xd4
            detail::TexCoordAry mTexCoordAry;  // size 0x08, offset 0xe4
        };  // size 0xec
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_PICTURE_H
