#ifndef NW4HBM_LYT_RESOURCE_ACCESSOR_H
#define NW4HBM_LYT_RESOURCE_ACCESSOR_H

#include <revolution/types.h>

#include "../macros.h"

// context declarations
namespace nw4hbm { namespace ut { class Font; }}

namespace nw4hbm {
    namespace lyt {
        class ResourceAccessor {
            // methods
        public:
            // cdtors
            ResourceAccessor();
            virtual ~ResourceAccessor();

            // virtual function ordering
            // vtable ResourceAccessor
            virtual void* GetResource(u32 resType, char const* name, u32* pSize) = 0;
            virtual ut::Font* GetFont(char const* name);

            // static members
        public:
            static u32 const SIGNATURE_FONT = NW4HBM_FOUR_CHAR('f', 'o', 'n', 't');

            static u32 const SIGNATURE_TEXTURE_IMAGE = NW4HBM_FOUR_CHAR('t', 'i', 'm', 'g');

            // members
        private:
            /* vtable */  // size 0x04, offset 0x00
        };  // size 0x04
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_RESOURCE_ACCESSOR_H
