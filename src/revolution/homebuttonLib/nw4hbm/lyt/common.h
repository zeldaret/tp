#ifndef NW4HBM_LYT_COMMON_H
#define NW4HBM_LYT_COMMON_H

#include <revolution/types.h>

#include "../math/types.h"
#include "../ut/Color.h"

#include <revolution/gx/GXStruct.h>
#include <revolution/tpl.h>

// context declarations
namespace nw4hbm { namespace lyt { class ResourceAccessor; }}

namespace nw4hbm {
    namespace lyt {
        namespace res {
            struct BinaryFileHeader {
                char signature[sizeof(u32)];  // size 0x04, offset 0x00
                u16 byteOrder;                // size 0x02, offset 0x04
                u16 version;                  // size 0x02, offset 0x06
                u32 fileSize;                 // size 0x04, offset 0x08
                u16 headerSize;               // size 0x02, offset 0x0c
                u16 dataBlocks;               // size 0x02, offset 0x0e
            };  // size 0x10

            struct DataBlockHeader {
                char kind[sizeof(u32)];  // size 0x04, offset 0x00
                u32 size;                // size 0x04, offset 0x04
            };  // size 0x08
        }  // namespace res

        struct Size {
            // methods
        public:
            // cdtors
            Size() : width(0.0f), height(0.0f) {}

            Size(f32 aWidth, f32 aHeight) : width(aWidth), height(aHeight) {}

            Size(Size const& other) : width(other.width), height(other.height) {}

            // operators
            friend bool operator==(Size const& a, Size const& b) {
                return a.width == b.width && a.height == b.height;
            }

            // members
        public:
            f32 width;   // size 0x04, offset 0x00
            f32 height;  // size 0x04, offset 0x04
        };  // size 0x08

        namespace detail {
            typedef math::VEC2 TexCoords[4];

            class TexCoordAry {
                // methods
            public:
                // cdtors
                TexCoordAry();
                /* ~TexCoordAry() = default; */

                // methods
                u8 GetSize() const { return mNum; }
                TexCoords const* GetArray() const { return mpData; }

                void SetSize(u8 num);

                void GetCoord(u32 idx, math::VEC2* coord) const;
                bool IsEmpty() const { return mCap == 0; }

                void SetCoord(u32 idx, math::VEC2 const* coord);

                void Reserve(u8 num);
                void Free();
                void Copy(void const* pResTexCoord, u8 texCoordNum);

                // members
            private:
                u8 mCap;  // size 0x01, offset 0x00
                u8 mNum;  // size 0x01, offset 0x01
                /* 2 bytes padding */
                TexCoords* mpData;  // size 0x04, offset 0x04
            };  // size 0x08

            bool EqualsPaneName(char const* name1, char const* name2);
            bool EqualsPaneName(u8 const* name1, u8 const* name2);

            bool EqualsMaterialName(char const* name1, char const* name2);

            bool TestFileHeader(res::BinaryFileHeader const& fileHeader);
            bool TestFileHeader(res::BinaryFileHeader const& fileHeader, u32 testSig);

            bool IsModulateVertexColor(ut::Color* vtxColors, u8 glbAlpha);
            ut::Color MultipleAlpha(ut::Color const col, u8 alpha);
            void MultipleAlpha(ut::Color* dst, ut::Color const* src, u8 alpha);

            void SetVertexFormat(bool bModulate, u8 texCoordNum);

            void DrawQuad(math::VEC2 const& polLT, math::VEC2 const& polRB, math::VEC2 const& texLT,
                          math::VEC2 const& texRB, ut::Color const* vtxColors);
            void DrawQuad(math::VEC2 const& basePt, Size const& size, u8 texCoordNum,
                          TexCoords const* texCoords, ut::Color const* vtxColors);
            void DrawQuad(math::VEC2 const& basePt, Size const& size, u8 texCoordNum,
                          TexCoords const* texCoords, ut::Color const* vtxColors, u8 alpha);
            void DrawLine(math::VEC2 const& pos, Size const& size, ut::Color color);
            void InitGXTexObjFromTPL(GXTexObj* to, TPLPalette* pal, u32 id);

            inline s32 GetSignatureInt(char const* sig) {
                return *reinterpret_cast<s32 const*>(sig);
            }

            inline char const* GetStrTableStr(void const* pStrTable, int index) {
                u32 const* offsets = static_cast<u32 const*>(pStrTable);
                char const* stringPool = static_cast<char const*>(pStrTable);

                return stringPool + offsets[index];
            }

            // What is this
            inline u8 GetVtxColorElement(ut::Color const* cols, u32 idx) {
                return reinterpret_cast<u8 const*>(cols + idx / 4)[idx % 4];
            }

            inline void SetVtxColorElement(ut::Color* cols, u32 idx, u8 value) {
                reinterpret_cast<u8*>(cols + idx / 4)[idx % 4] = value;
            }

            // positions of what?
            inline u8 GetHorizontalPosition(u8 var) {
                return var % 3;
            }

            inline u8 GetVerticalPosition(u8 var) {
                return var / 3;
            }

            inline void SetHorizontalPosition(u8* pVar, u8 newVal) {
                *pVar = GetVerticalPosition(*pVar) * 3 + newVal;
            }

            inline void SetVerticalPosition(u8* pVar, u8 newVal) {
                *pVar = newVal * 3 + GetHorizontalPosition(*pVar);
            }
        }  // namespace detail
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_COMMON_H
