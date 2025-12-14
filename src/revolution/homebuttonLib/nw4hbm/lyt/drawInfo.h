#ifndef NW4HBM_LYT_DRAW_INFO_H
#define NW4HBM_LYT_DRAW_INFO_H

#include <revolution/types.h>

#include "../math/types.h"
#include "../ut/Rect.h"

namespace nw4hbm {
    namespace lyt {
        class DrawInfo {
            // methods
        public:
            // cdtors
            DrawInfo();
            virtual ~DrawInfo();

            // methods
            math::MTX34 const& GetViewMtx() const { return mViewMtx; }
            math::VEC2 const& GetLocationAdjustScale() const { return mLocationAdjustScale; }

            f32 GetGlobalAlpha() const { return mGlobalAlpha; }
            bool IsMultipleViewMtxOnDraw() const { return mFlag.mulViewDraw; }
            bool IsInfluencedAlpha() const { return mFlag.influencedAlpha; }
            bool IsLocationAdjust() const { return mFlag.locationAdjust; }
            bool IsInvisiblePaneCalculateMtx() const { return mFlag.invisiblePaneCalculateMtx; }

            bool IsDebugDrawMode() const { return mFlag.debugDrawMode; }

            void SetViewMtx(math::MTX34 const& value) { mViewMtx = value; }
            void SetViewRect(ut::Rect const& value) { mViewRect = value; }
            void SetLocationAdjustScale(math::VEC2 const& scale) { mLocationAdjustScale = scale; }

            void SetGlobalAlpha(f32 alpha) { mGlobalAlpha = alpha; }
            void SetInfluencedAlpha(bool bEnable) { mFlag.influencedAlpha = bEnable; }

            void SetLocationAdjust(bool bEnable) { mFlag.locationAdjust = bEnable; }

            bool IsYAxisUp() const { return mViewRect.bottom - mViewRect.top < 0.0f; }

            // members
        public:                               // homebutton::HomeButton::draw
            math::MTX34 mViewMtx;             // size 0x30, offset 0x04
            ut::Rect mViewRect;               // size 0x10, offset 0x34
            math::VEC2 mLocationAdjustScale;  // size 0x08, offset 0x44
            f32 mGlobalAlpha;                 // size 0x04, offset 0x4c

            struct /* explicitly untagged */
            {
                u8 mulViewDraw : 1;                // size 1, offset 0x00:0
                u8 influencedAlpha : 1;            // size 1, offset 0x00:1
                u8 locationAdjust : 1;             // size 1, offset 0x00:2
                u8 invisiblePaneCalculateMtx : 1;  // size 1, offset 0x00:3
                u8 debugDrawMode : 1;              // size 1, offset 0x00:4
                                                   /* 3 bits padding */
            } mFlag;                               // size 0x01, offset 0x50
                                                   /* 3 bytes padding */
        };  // size 0x54
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_DRAW_INFO_H
