#ifndef NW4HBM_LYT_LAYOUT_H
#define NW4HBM_LYT_LAYOUT_H

#include "../macros.h"

#include <revolution/types.h>

#include "../macros.h"

#include "animation.h"
#include "common.h"

#include <revolution/mem/allocator.h>

// context declarations
namespace nw4hbm { namespace lyt { class DrawInfo; }}
namespace nw4hbm { namespace lyt { class GroupContainer; }}
namespace nw4hbm { namespace lyt { class Pane; }}
namespace nw4hbm { namespace lyt { class ResourceAccessor; }}
namespace nw4hbm { namespace ut { struct Rect; }}
namespace nw4hbm { namespace ut { template <typename> class TagProcessorBase; }}

namespace nw4hbm {
    namespace lyt {
        namespace res {
            static u32 const SIGNATURE_LAYOUT_BLOCK = NW4HBM_FOUR_CHAR('l', 'y', 't', '1');

            struct Layout {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u8 originType;                // size 0x01, offset 0x08 // TODO: enum for this too?
                u8 padding[3];
                Size layoutSize;  // size 0x08, offset 0x0c
            };  // size 0x14

            static u32 const SIGNATURE_TEXTURE_LIST_BLOCK = NW4HBM_FOUR_CHAR('t', 'x', 'l', '1');

            struct TextureList {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u16 texNum;                   // size 0x02, offset 0x08
                u8 padding[2];
            };  // size 0x0c

            static u32 const SIGNATURE_FONT_LIST_BLOCK = NW4HBM_FOUR_CHAR('f', 'n', 'l', '1');

            struct FontList {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u16 fontNum;                  // size 0x02, offset 0x08
                u8 padding[2];
            };  // size 0x0c

            static u32 const SIGNATURE_MATERIAL_LIST_BLOCK = NW4HBM_FOUR_CHAR('m', 'a', 't', '1');

            struct MaterialList {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u16 materialNum;              // size 0x02, offset 0x08
                u8 padding[2];
            };  // size 0x0c

            static u32 const SIGNATURE_LAYOUT = NW4HBM_FOUR_CHAR('R', 'L', 'Y', 'T');
        }  // namespace res

        struct ResBlockSet {
            res::TextureList const* pTextureList;    // size 0x04, offset 0x00
            res::FontList const* pFontList;          // size 0x04, offset 0x04
            res::MaterialList const* pMaterialList;  // size 0x04, offset 0x08
            ResourceAccessor* pResAccessor;          // size 0x04, offset 0x0c
        };  // size 0x10

        class Layout {
            // enums
        public:
            typedef u8 OriginType;
            enum OriginType_et { OriginType_TopLeft, OriginType_Center };

            // methods
        public:
            // cdtors
            Layout();
            virtual ~Layout();

            // virtual function ordering
            // vtable Layout
            virtual bool Build(void const* lytResBuf, ResourceAccessor* pResAcsr);
            virtual AnimTransform* CreateAnimTransform(void const* anmResBuf,
                                                       ResourceAccessor* pResAcsr);
            virtual void BindAnimation(AnimTransform* pAnimTrans);
            virtual void UnbindAnimation(AnimTransform* pAnimTrans);
            virtual void UnbindAllAnimation();
            virtual void SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable);
            virtual void CalculateMtx(DrawInfo const& drawInfo);
            virtual void Draw(DrawInfo const& drawInfo);
            virtual void Animate(u32 option);
            virtual void SetTagProcessor(ut::TagProcessorBase<wchar_t>* pTagProcessor);

            // methods
            Pane* GetRootPane() const { return mpRootPane; }
            GroupContainer* GetGroupContainer() const { return mpGroupContainer; }

            ut::Rect GetLayoutRect() const;

            // static methods
            static MEMAllocator* GetAllocator() { return mspAllocator; }
            static void SetAllocator(MEMAllocator* pAllocator) { mspAllocator = pAllocator; }

            static void* AllocMemory(u32 size) { return MEMAllocFromAllocator(mspAllocator, size); }

            static void FreeMemory(void* mem) { MEMFreeToAllocator(mspAllocator, mem); }

            static Pane* BuildPaneObj(s32 kind, void const* dataPtr,
                                      ResBlockSet const& resBlockSet);

            // static members
        private:
            static MEMAllocator* mspAllocator;

            // members
        private:
            /* vtable */                             // size 0x04, offset 0x00
            AnimTransform::LinkList mAnimTransList;  // size 0x0c, offset 0x04
            Pane* mpRootPane;                        // size 0x04, offset 0x10
            GroupContainer* mpGroupContainer;        // size 0x04, offset 0x14
            Size mLayoutSize;                        // size 0x08, offset 0x18
            OriginType mOriginType;                  // size 0x01, offset 0x20
                                                     /* 3 bytes padding */
        };  // size 0x24
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_LAYOUT_H
