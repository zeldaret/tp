#ifndef J2DSCREEN_H
#define J2DSCREEN_H

#include "JSystem/J2DGraph/J2DManage.h"
#include "JSystem/J2DGraph/J2DMaterial.h"
#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/JUtility/JUTNameTab.h"
#include "dolphin/types.h"

struct J2DScrnBlockHeader {};

class J2DScreen : public J2DPane {
public:
    /* 802F8540 */ virtual ~J2DScreen();
    /* 802F9A18 */ virtual s32 getTypeID() const;
    /* 802F9A20 */ virtual void calcMtx();
    /* 802F9120 */ virtual void drawSelf(f32, f32, Mtx*);
    /* 802F90A0 */ virtual J2DPane* search(u64);
    /* 802F90E0 */ virtual J2DPane* searchUserInfo(u64);
    /* 802F9600 */ virtual bool isUsed(ResTIMG const*);
    /* 802F9620 */ virtual bool isUsed(ResFONT const*);
    /* 80053BA0 */ virtual void clearAnmTransform();
    /* 802F9704 */ virtual void setAnimation(J2DAnmColor*);
    /* 80192414 */ virtual void setAnimation(J2DAnmTransform*);
    /* 802F9798 */ virtual void setAnimation(J2DAnmTextureSRTKey*);
    /* 802F99A8 */ virtual void setAnimation(J2DAnmVtxColor*);
    /* 802F9838 */ virtual void setAnimation(J2DAnmTexPattern*);
    /* 802F99C8 */ virtual void setAnimation(J2DAnmVisibilityFull*);
    /* 802F98CC */ virtual void setAnimation(J2DAnmTevRegKey*);
    /* 802F9A54 */ virtual void setAnimation(J2DAnmBase*);
    /* 802F9A74 */ virtual void setAnimationVF(J2DAnmVisibilityFull*);
    /* 802F9A78 */ virtual void setAnimationVC(J2DAnmVtxColor*);
    /* 802F99E8 */ virtual void createPane(J2DScrnBlockHeader const&, JSURandomInputStream*,
                                           J2DPane*, u32);
    /* 802F8B98 */ virtual void createPane(J2DScrnBlockHeader const&, JSURandomInputStream*,
                                           J2DPane*, u32, JKRArchive*);

    /* 802F8498 */ J2DScreen();
    /* 802F85A8 */ void clean();
    /* 802F8648 */ void setPriority(char const*, u32, JKRArchive*);
    /* 802F8748 */ bool setPriority(JSURandomInputStream*, u32, JKRArchive*);
    /* 802F8778 */ bool private_set(JSURandomInputStream*, u32, JKRArchive*);
    /* 802F8834 */ bool checkSignature(JSURandomInputStream*);
    /* 802F8894 */ void getScreenInformation(JSURandomInputStream*);
    /* 802F8990 */ void makeHierarchyPanes(J2DPane*, JSURandomInputStream*, u32, JKRArchive*);
    /* 802F8ED4 */ void draw(f32, f32, J2DGrafContext const*);
    /* 802F9280 */ void getResReference(JSURandomInputStream*, u32);
    /* 802F937C */ void createMaterial(JSURandomInputStream*, u32, JKRArchive*);
    /* 802F9640 */ static void* getNameResource(char const*);
    /* 802F9690 */ void animation();

    static J2DDataManage* mDataManage;

private:
    /* 0x100 */ bool mScissor;
    /* 0x102 */ u16 mMaterialNum;
    /* 0x104 */ J2DMaterial* mMaterials;
    /* 0x108 */ J2DResReference* field_0x108;
    /* 0x10C */ J2DResReference* field_0x10c;
    /* 0x110 */ JUTNameTab* mNameTable;
    /* 0x114 */ u32 field_0x114;
};

#endif /* J2DSCREEN_H */
