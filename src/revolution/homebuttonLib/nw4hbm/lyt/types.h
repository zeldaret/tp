#ifndef NW4HBM_LYT_TYPES_H
#define NW4HBM_LYT_TYPES_H

namespace nw4hbm {
    namespace lyt {
        namespace detail {
            template <typename T>
            inline T const* ConvertOffsToPtr(void const* baseAddress, unsigned int offset) {
                return reinterpret_cast<T const*>(reinterpret_cast<unsigned int>(baseAddress) +
                                                  offset);
            }

            template <typename T>
            inline T* ConvertOffsToPtr(void* baseAddress, unsigned int offset) {
                return reinterpret_cast<T*>(reinterpret_cast<unsigned int>(baseAddress) + offset);
            }

            template <typename T>
            inline void SetBit(T* pBits, int pos, bool val) {
                T mask(~(1 << pos));

                // result is a bit value, not a boolean value
                *pBits &= mask;
                *pBits |= (val ? 1 : 0) << pos;
            }

            template <typename T>
            inline bool TestBit(T bits, int pos) {
                T mask(1 << pos);

                return (bits & mask) != 0;
            }

            template <typename T>
            inline T GetBits(T bits, int pos, int len) {
                T mask(~(~0 << len));

                return bits >> pos & mask;
            }
        }  // namespace detail
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_TYPES_H
