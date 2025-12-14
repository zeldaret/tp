#include "CharStrmReader.h"

#include <revolution/types.h>

namespace nw4hbm {
    namespace ut {
        namespace {
            inline bool IsSJISLeadByte(u8 c) {
                return (0x81 <= c && c < 0xA0) || 0xE0 <= c;
            }
        }  // namespace
    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {

        u16 CharStrmReader::ReadNextCharUTF8() {
            u16 code;

            if ((GetChar<u8>(0) & 0x80) == 0x00) {
                // 1-byte UTF-8 sequence
                code = GetChar<u8>(0);
                StepStrm<u8>(1);
            } else if ((GetChar<u8>(0) & 0xE0) == 0xC0) {
                // 2-byte UTF-8 sequence
                code = (GetChar<u8>(0) & 0x1f) << 6 | (GetChar<u8>(1) & 0x3f);
                StepStrm<u8>(2);
            } else  // if ((GetChar<u8>(0) & 0xF0) == 0xE0)
            {
                // 3-byte UTF-8 sequence

                // technical ERRATUM: the mask of GetChar<u8>(0) should be 0x0f
                /* Technical because the unmasked bit doesn't fit in code. Also it would
                 * be a 0 anyways. So it doesn't matter that much
                 */
                code = (GetChar<u8>(0) & 0x1f) << 12 | (GetChar<u8>(1) & 0x3f) << 6 |
                       (GetChar<u8>(2) & 0x3f);
                StepStrm<u8>(3);
            }

            /* NOTE: 4-byte to 7-byte UTF-8 sequences usually encode code points outside
             * of the BMP; I think sticking to the BMP is fine here.
             */

            return code;
        }

        u16 CharStrmReader::ReadNextCharUTF16() {
            u16 code;

            code = GetChar<u16>(0);
            StepStrm<u16>(1);

            return code;
        }

        u16 CharStrmReader::ReadNextCharCP1252() {
            u16 code;

            code = GetChar<unsigned char>(0);
            StepStrm<unsigned char>(1);

            return code;
        }

        u16 CharStrmReader::ReadNextCharSJIS() {
            u16 code;

            if (IsSJISLeadByte(GetChar<unsigned char>(0))) {
                code = GetChar<unsigned char>(0) << 8 | GetChar<unsigned char>(1);
                StepStrm<unsigned char>(2);
            } else {
                code = GetChar<unsigned char>(0);
                StepStrm<unsigned char>(1);
            }

            return code;
        }

    }  // namespace ut
}  // namespace nw4hbm
