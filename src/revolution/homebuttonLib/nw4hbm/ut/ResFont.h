#ifndef NW4HBM_UT_RES_FONT_H
#define NW4HBM_UT_RES_FONT_H

#include <revolution/types.h>

#include "../macros.h"

#include "ResFontBase.h"

// context declarations
namespace nw4hbm { namespace ut { struct FontInformation; }}
namespace nw4hbm { namespace ut { struct BinaryFileHeader; }}

namespace nw4hbm {
    namespace ut {
        class ResFont : public detail::ResFontBase {
            // methods
        public:
            // cdtors
            ResFont();
            virtual ~ResFont();

            // methods
            bool SetResource(void* brfnt);
            void* RemoveResource();

            // static methods
            static FontInformation* Rebuild(BinaryFileHeader* fileHeader);

            // static members
        public:
            static u32 const SIGNATURE_FONT = NW4HBM_FOUR_CHAR('R', 'F', 'N', 'T');
            static u32 const SIGNATURE_FONT_UNPACKED = NW4HBM_FOUR_CHAR('R', 'F', 'N', 'U');
            static u32 const SIGNATURE_FONT_INFO = NW4HBM_FOUR_CHAR('F', 'I', 'N', 'F');
            static u32 const SIGNATURE_FONT_TEX_GLYPH = NW4HBM_FOUR_CHAR('T', 'G', 'L', 'P');
            static u32 const SIGNATURE_FONT_CHAR_WIDTH = NW4HBM_FOUR_CHAR('C', 'W', 'D', 'H');
            static u32 const SIGNATURE_FONT_CODE_MAP = NW4HBM_FOUR_CHAR('C', 'M', 'A', 'P');

            // TODO: What is this? glyph something? graphic?
            static u32 const SIGNATURE_FONT_GLGR = NW4HBM_FOUR_CHAR('G', 'L', 'G', 'R');

            static int const FILE_VERSION = NW4HBM_FILE_VERSION(1, 4);

            // members
        private:
            /* base ResFontBase */  // size 0x18, offset 0x00
        };  // size 0x18
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_RES_FONT_H
