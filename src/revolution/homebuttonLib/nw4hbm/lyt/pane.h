#ifndef NW4HBM_LYT_PANE_H
#define NW4HBM_LYT_PANE_H

#include <revolution/types.h>

#include "../macros.h"

#include "animation.h"
#include "common.h"
#include "types.h"

#include "../math/types.h"
#include "../ut/Color.h"
#include "../ut/LinkList.h"

// context declarations
namespace nw4hbm { namespace lyt { class DrawInfo; }}
namespace nw4hbm { namespace lyt { class Material; }}
namespace nw4hbm { namespace ut { namespace detail { class RuntimeTypeInfo; }}}
namespace nw4hbm { namespace ut { struct Rect; }}

namespace nw4hbm {
    namespace lyt {
        // forward declarations
        class Pane;

        namespace res {
            static u32 const SIGNATURE_PANE_BLOCK = NW4HBM_FOUR_CHAR('p', 'a', 'n', '1');

            static u32 const SIGNATURE_PANE_START_BLOCK = NW4HBM_FOUR_CHAR('p', 'a', 's', '1');
            static u32 const SIGNATURE_PANE_END_BLOCK = NW4HBM_FOUR_CHAR('p', 'a', 'e', '1');

            struct Pane {
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                u8 flag;                      // size 0x01, offset 0x08
                u8 basePosition;              // size 0x01, offset 0x09
                u8 alpha;                     // size 0x01, offset 0x0a
                u8 padding;
                char name[16];         // size 0x10, offset 0x0c
                char userData[8];      // size 0x08, offset 0x1c
                math::VEC3 translate;  // size 0x0c, offset 0x24
                math::VEC3 rotate;     // size 0x0c, offset 0x30
                math::VEC2 scale;      // size 0x08, offset 0x3c
                Size size;             // size 0x08, offset 0x44
            };  // size 0x4c
        }  // namespace res

        namespace detail {
            struct PaneLink {
                // typedefs
            public:
                /* offsetof(PaneLink, mLink) */
                typedef ut::LinkList<PaneLink, 0> LinkList;

                // members
            public:
                ut::LinkListNode mLink;  // size 0x08, offset 0x00
                Pane* mTarget;           // size 0x04, offset 0x08
            };  // size 0x0c

            class PaneBase {
                // typedefs
            public:
                /* offsetof(PaneBase, mLink) */
                typedef ut::LinkList<PaneBase, 4> LinkList;

                // methods
            public:
                // cdtors
                PaneBase();
                virtual ~PaneBase();

                // members
            private:
                /* vtable */             // size 0x04, offset 0x00
                ut::LinkListNode mLink;  // size 0x08, offset 0x04
            };  // size 0x0c
        }  // namespace detail

        class Pane : public detail::PaneBase {
            // typedefs
        public:
            // redeclare with this class for symbol names
            typedef ut::LinkList<Pane, 4> LinkList;

            // methods
        public:
            // cdtors
            Pane();
            Pane(res::Pane const* pBlock);
            virtual ~Pane();

            // virtual function ordering
            // vtable Pane
            virtual ut::detail::RuntimeTypeInfo const* GetRuntimeTypeInfo() const {
                return &typeInfo;
            }

            virtual void CalculateMtx(DrawInfo const& drawInfo);
            virtual void Draw(DrawInfo const& drawInfo);
            virtual void DrawSelf(DrawInfo const& drawInfo);
            virtual void Animate(u32 option);
            virtual void AnimateSelf(u32 option);
            virtual ut::Color GetVtxColor(u32 idx) const;
            virtual void SetVtxColor(u32 idx, ut::Color value);
            virtual u8 GetColorElement(u32 idx) const;
            virtual void SetColorElement(u32 idx, u8 value);
            virtual u8 GetVtxColorElement(u32 idx) const;
            virtual void SetVtxColorElement(u32 idx, u8 value);
            virtual Pane* FindPaneByName(char const* findName, bool bRecursive);
            virtual Material* FindMaterialByName(char const* findName, bool bRecursive);
            virtual void BindAnimation(AnimTransform* pAnimTrans, bool bRecursive);
            virtual void UnbindAnimation(AnimTransform* pAnimTrans, bool bRecursive);
            virtual void UnbindAllAnimation(bool bRecursive);
            virtual void UnbindAnimationSelf(AnimTransform* pAnimTrans);
            virtual AnimationLink* FindAnimationLink(AnimTransform* pAnimTrans);
            virtual void SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable,
                                            bool bRecursive);
            virtual Material* GetMaterial() const;
            virtual void LoadMtx(DrawInfo const& drawInfo);

            // methods
            Pane* GetParent() const { return mpParent; }
            LinkList& GetChildList() { return mChildList; }
            math::VEC3 const& GetTranslate() const { return mTranslate; }
            Size const& GetSize() const { return mSize; }
            math::MTX34 const& GetGlobalMtx() const { return mGlbMtx; }
            bool IsVisible() const { return detail::TestBit(mFlag, 0); }
            char const* GetName() const { return mName; }
            bool IsUserAllocated() const { return mbUserAllocated; }

            void SetRotate(math::VEC3 const& value) { mRotate = value; }
            void SetScale(math::VEC2 const& value) { mScale = value; }
            void SetSRTElement(u32 idx, f32 value) {
                f32* srtAry = reinterpret_cast<f32*>(&mTranslate);

                srtAry[idx] = value;
            }

            void SetTranslate(math::VEC2 const& value) {
                SetTranslate(math::VEC3(value.x, value.y, 0.0f));
            }

            void SetTranslate(math::VEC3 const& value) { mTranslate = value; }
            void SetSize(Size const& value) { mSize = value; }
            void SetVisible(bool bVisible) { detail::SetBit(&mFlag, 0, bVisible); }
            void SetAlpha(u8 alpha) { mAlpha = alpha; }

            ut::Rect GetPaneRect(DrawInfo const& drawInfo) const;
            math::VEC2 GetVtxPos() const;

            void SetName(char const* name);
            void SetUserData(char const* userData);

            void Init();

            void PrependChild(Pane* pChild);
            void InsertChild(Pane* pNext, Pane* pChild);
            void InsertChild(LinkList::Iterator next, Pane* pChild);
            void AppendChild(Pane* pChild);
            void RemoveChild(Pane* pChild);

            void CalculateMtxChild(DrawInfo const& drawInfo);

            void AddAnimationLink(AnimationLink* pAnimationLink);

            // static members
        public:
            static ut::detail::RuntimeTypeInfo const typeInfo;

            // members
        protected:                              // Bounding::DrawSelf
            /* base PaneBase */                 // size 0x0c, offset 0x00
            Pane* mpParent;                     // size 0x04, offset 0x0c
            LinkList mChildList;                // size 0x0c, offset 0x10
            AnimationLink::LinkList mAnimList;  // size 0x0c, offset 0x1c
            Material* mpMaterial;               // size 0x04, offset 0x28
            math::VEC3 mTranslate;              // size 0x0c, offset 0x2c
            math::VEC3 mRotate;                 // size 0x0c, offset 0x38
            math::VEC2 mScale;                  // size 0x08, offset 0x44
            Size mSize;                         // size 0x08, offset 0x4c
            math::MTX34 mMtx;                   // size 0x30, offset 0x54
            math::MTX34 mGlbMtx;                // size 0x30, offset 0x84
            char mName[16];                     // size 0x10, offset 0xb4
            char mUserData[8];                  // size 0x08, offset 0xc4
            u8 mBasePosition;                   // size 0x01, offset 0xcc
            u8 mAlpha;                          // size 0x01, offset 0xcd
            u8 mGlbAlpha;                       // size 0x01, offset 0xce
            u8 mFlag;                           // size 0x01, offset 0xcf
            bool mbUserAllocated;               // size 0x01, offset 0xd0
                                                /* 3 bytes padding */
        };  // size 0xd4
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_PANE_H
