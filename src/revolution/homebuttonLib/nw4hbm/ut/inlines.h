#ifndef NW4HBM_UT_INLINES_H
#define NW4HBM_UT_INLINES_H

#include <revolution/types.h>

namespace nw4hbm {
    namespace ut {
        namespace {
            class NonCopyable {
                // methods
            public:
                // cdtors
                NonCopyable() {}
                ~NonCopyable() {}

                // deleted methods
            private:
                NonCopyable(NonCopyable const&) /* = delete */;
                NonCopyable const& operator=(NonCopyable const&) /* = delete */;
            };  // empty

            template <typename T>
            inline T Min(T a, T b) {
                return a > b ? b : a;
            }

            template <typename T>
            inline T Max(T a, T b) {
                return a < b ? b : a;
            }

            template <typename T>
            inline T Clamp(T x, T low, T high) {
                return (x > high) ? high : ((x < low) ? low : x);
            }

            template <typename T>
            inline T BitExtract(T bits, int pos, int len) {
                T mask = (1 << len) - 1;

                return bits >> pos & mask;
            }

            inline u32 ReverseEndian(u32 x) {
                return BitExtract(x, 0, 8) << 24 | BitExtract(x, 8, 8) << 16 |
                       BitExtract(x, 16, 8) << 8 | BitExtract(x, 24, 8);
            }

            inline u16 ReverseEndian(u16 x) {
                return BitExtract(x, 0, 8) << 8 | BitExtract(x, 8, 8);
            }

            inline u32 GetIntPtr(void const* ptr) {
                return reinterpret_cast<u32>(ptr);
            }

            template <typename T>
            inline void* AddOffsetToPtr(void* ptr, T offset) {
                return reinterpret_cast<void*>(GetIntPtr(ptr) + offset);
            }

            template <typename T>
            inline const void* AddOffsetToPtr(const void* base, T offset) {
                return reinterpret_cast<const void*>(GetIntPtr(base) + offset);
            }
        }  // namespace
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_INLINES_H
