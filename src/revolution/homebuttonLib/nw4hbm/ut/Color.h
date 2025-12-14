#ifndef NW4HBM_UT_COLOR_H
#define NW4HBM_UT_COLOR_H

#include "../macros.h"

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

namespace nw4hbm {
	namespace ut {
		struct Color : public GXColor {
		// methods
		public:
			// cdtors
			Color() { operator =(0xffffffff); }
			Color(u32 color) { operator =(color); }
			Color(GXColor const &color) { operator =(color); }

			~Color() {}

			// operators
			Color& operator=(u32 color) {
				ToU32ref() = color;
				return *this;
			}

			Color& operator=(GXColor const& color) {
				return *this = *reinterpret_cast<u32 const*>(&color);
			}

			operator u32() const { return ToU32ref(); }

			// methods
			u32& ToU32ref() { return *reinterpret_cast<u32*>(this); }

			u32 const& ToU32ref() const {
				return *reinterpret_cast<u32 const*>(this);
			}

		// members
		public:
		} ATTRIBUTE_ALIGN(4); // size 0x04 /* mwcc only honors the align attribute here */
	}
} // namespace nw4hbm::ut

#endif // NW4HBM_UT_COLOR_H
