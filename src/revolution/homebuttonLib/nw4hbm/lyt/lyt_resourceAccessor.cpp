#include "resourceAccessor.h"

#include <revolution/types.h>

// context declarations
namespace nw4hbm { namespace ut { class Font; }}

namespace nw4hbm {
    namespace lyt {

        // Destructor is first for some reason. Idk
        ResourceAccessor::~ResourceAccessor() {}

        ResourceAccessor::ResourceAccessor() {}

        ut::Font* ResourceAccessor::GetFont(char const*) {
            return NULL;
        }

    }  // namespace lyt
}  // namespace nw4hbm
