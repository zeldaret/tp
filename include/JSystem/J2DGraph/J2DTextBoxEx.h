#ifndef J2DTEXTBOXEX_H
#define J2DTEXTBOXEX_H

#include "JSystem/J2DGraph/J2DTextBox.h"
#include "dolphin/types.h"

class J2DMaterial;

class J2DTextBoxEx : public J2DTextBox {
public:
    enum stage_enum {
        STAGE_0,
        STAGE_1,
        STAGE_2,
    };

    /* 803071E4 */ J2DTextBoxEx(J2DPane*, JSURandomInputStream*, u32, J2DMaterial*);
    /* 80307E0C */ void setTevOrder(bool);
    /* 80307EF0 */ void setTevStage(bool);
    /* 80307F94 */ void setStage(J2DTevStage*, J2DTextBoxEx::stage_enum);
    /* 803084CC */ bool getBlackWhite(JUtility::TColor*, JUtility::TColor*) const;
    /* 80308668 */ bool isSetBlackWhite(JUtility::TColor, JUtility::TColor) const;

    /* 8030751C */ virtual ~J2DTextBoxEx();
    /* 803089EC */ virtual void setCullBack(bool);
    /* 803087DC */ virtual void setCullBack(_GXCullMode);
    /* 803087BC */ virtual void setAlpha(u8);
    /* 803075AC */ virtual void drawSelf(f32, f32, f32 (*)[3][4]);
    /* 80308A28 */ virtual bool isUsed(ResTIMG const*);
    /* 80308828 */ virtual bool isUsed(ResFONT const*);
    /* 80308810 */ virtual void rewriteAlpha();
    /* 80308A4C */ virtual void setAnimation(J2DAnmBase*);
    /* 80256044 */ virtual void setAnimation(J2DAnmTransform*);
    /* 803088B4 */ virtual void setAnimation(J2DAnmColor*);
    /* 8030890C */ virtual void setAnimation(J2DAnmTexPattern*);
    /* 803088E0 */ virtual void setAnimation(J2DAnmTextureSRTKey*);
    /* 80308938 */ virtual void setAnimation(J2DAnmTevRegKey*);
    /* 80308964 */ virtual void setAnimation(J2DAnmVisibilityFull*);
    /* 80308A48 */ virtual void setAnimation(J2DAnmVtxColor*);
    /* 8030896C */ virtual const J2DAnmTransform* animationPane(J2DAnmTransform const*);
    /* 803078AC */ virtual void draw(f32, f32);
    /* 80307AF0 */ virtual void draw(f32, f32, f32, J2DTextBoxHBinding);
    /* 80307D5C */ virtual void setFont(JUTFont*);
    /* 80307DC0 */ virtual JUTFont* getFont() const;
    /* 8030823C */ virtual bool setBlack(JUtility::TColor);
    /* 803082C4 */ virtual bool setWhite(JUtility::TColor);
    /* 8030834C */ virtual bool setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 803086FC */ virtual JUtility::TColor getBlack() const;
    /* 8030875C */ virtual JUtility::TColor getWhite() const;
    /* 80256024 */ virtual bool getMaterial() const;

private:
    /* 0x138 */ J2DMaterial* mMaterial;
    /* 0x13C */ u16 field_0x13c;
    /* 0x13E */ u16 field_0x13e;
    /* 0x140 */ u8 field_0x140;
    /* 0x144 */ J2DAnmVisibilityFull* mVisibilityAnm;
};  // Size: 0x148

#endif /* J2DTEXTBOXEX_H */
