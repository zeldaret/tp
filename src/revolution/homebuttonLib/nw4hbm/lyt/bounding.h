#ifndef NW4HBM_LYT_BOUNDING_H
#define NW4HBM_LYT_BOUNDING_H

#include <revolution/types.h>

#include "../macros.h"

#include "pane.h"

// context declarations
namespace nw4hbm { namespace lyt { struct ResBlockSet; }}
namespace nw4hbm { namespace ut { namespace detail { class RuntimeTypeInfo; }}}

namespace nw4hbm {
    namespace lyt {
        namespace res {
            static u32 const SIGNATURE_BOUNDING_BLOCK = NW4HBM_FOUR_CHAR('b', 'n', 'd', '1');

            struct Bounding : public Pane {
                // members
            public:
                /* base Pane */  // size 0x4c, offset 0x00
            };  // size 0x4c
        }  // namespace res

        class Bounding : public Pane {
            // methods
        public:
            // cdtors
            Bounding(res::Bounding const* pBlock, ResBlockSet const& resBlockSet);
            virtual ~Bounding();

            // virtual function ordering
            // vtable Pane
            virtual ut::detail::RuntimeTypeInfo const* GetRuntimeTypeInfo() const {
                return &typeInfo;
            }

            virtual void DrawSelf(DrawInfo const& drawInfo);

            // static members
        public:
            static ut::detail::RuntimeTypeInfo const typeInfo;

            // members
        private:
            /* base Pane */  // size 0xd4, offset 0x00
        };  // size 0xd4
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_BOUNDING_H
