#ifndef J2DPICTUREEX_H
#define J2DPICTUREEX_H

#include "JSystem/J2DGraph/J2DPicture.h"
#include "JSystem/J2DGraph/J2DTevs.h"

class J2DMaterial;

class J2DPictureEx : public J2DPicture {
public:
    enum stage_enum {};

    /* 803036EC */ J2DPictureEx(J2DPane*, JSURandomInputStream*, u32, J2DMaterial*);
    /* 803040E4 */ void insertCommon(u8, f32);
    /* 8030437C */ bool isInsert(u8) const;
    /* 80304728 */ bool isRemove(u8) const;
    /* 803052AC */ void setTevOrder(u8, u8, bool);
    /* 803053E0 */ void setTevStage(u8, u8, bool);
    /* 80305688 */ void setStage(J2DTevStage*, J2DPictureEx::stage_enum);
    /* 80305928 */ void setTevKColor(u8);
    /* 80305C70 */ void setTevKColorSel(u8);
    /* 80305D18 */ void setTevKAlphaSel(u8);
    /* 80305DC0 */ void shiftSetBlendRatio(u8, f32, bool, bool);
    /* 80306664 */ bool getBlackWhite(JUtility::TColor*, JUtility::TColor*) const;
    /* 80306824 */ bool isSetBlackWhite(JUtility::TColor, JUtility::TColor) const;

    /* 8030393C */ virtual ~J2DPictureEx();
    /* 80307168 */ virtual void setCullBack(bool);
    /* 803069D8 */ virtual void setCullBack(_GXCullMode);
    /* 803069B8 */ virtual void setAlpha(u8);
    /* 80303AB4 */ virtual void drawSelf(f32, f32, f32 (*)[3][4]);
    /* 80306A24 */ virtual void isUsed(ResTIMG const*);
    /* 803071A4 */ virtual void isUsed(ResFONT const*);
    /* 80306A0C */ virtual void rewriteAlpha();
    /* 803071C4 */ virtual void setAnimation(J2DAnmBase*);
    /* 80256064 */ virtual void setAnimation(J2DAnmTransform*);
    /* 80306AC4 */ virtual void setAnimation(J2DAnmColor*);
    /* 80306B1C */ virtual void setAnimation(J2DAnmTexPattern*);
    /* 80306AF0 */ virtual void setAnimation(J2DAnmTextureSRTKey*);
    /* 80306B48 */ virtual void setAnimation(J2DAnmTevRegKey*);
    /* 80306B74 */ virtual void setAnimation(J2DAnmVisibilityFull*);
    /* 80306B7C */ virtual void setAnimation(J2DAnmVtxColor*);
    /* 80306C70 */ virtual void animationPane(J2DAnmTransform const*);
    /* 80303640 */ virtual void initiate(ResTIMG const*, ResTLUT const*);
    /* 803039CC */ virtual bool prepareTexture(u8);
    /* 80306ED4 */ virtual bool append(ResTIMG const*, f32);
    /* 80303E5C */ virtual bool append(ResTIMG const*, JUTPalette*, f32);
    /* 80306F04 */ virtual bool append(char const*, f32);
    /* 80303EA4 */ virtual bool append(char const*, JUTPalette*, f32);
    /* 80303EEC */ virtual bool append(JUTTexture*, f32);
    /* 80306FF4 */ virtual void prepend(ResTIMG const*, f32);
    /* 80306FC4 */ virtual void prepend(ResTIMG const*, JUTPalette*, f32);
    /* 80306F94 */ virtual void prepend(char const*, f32);
    /* 80306F64 */ virtual void prepend(char const*, JUTPalette*, f32);
    /* 80306F34 */ virtual void prepend(JUTTexture*, f32);
    /* 80307058 */ virtual void insert(ResTIMG const*, u8, f32);
    /* 80303F34 */ virtual bool insert(ResTIMG const*, JUTPalette*, u8, f32);
    /* 80307024 */ virtual bool insert(char const*, u8, f32);
    /* 80303FD8 */ virtual bool insert(char const*, JUTPalette*, u8, f32);
    /* 80304048 */ virtual bool insert(JUTTexture*, u8, f32);
    /* 8030446C */ virtual bool remove(u8);
    /* 80304608 */ virtual bool remove();
    /* 8030466C */ virtual bool remove(JUTTexture*);
    /* 8030708C */ virtual void draw(f32, f32, bool, bool, bool);
    /* 8030477C */ virtual void draw(f32, f32, u8, bool, bool, bool);
    /* 80304890 */ virtual void draw(f32, f32, f32, f32, bool, bool, bool);
    /* 80304D88 */ virtual void drawOut(f32, f32, f32, f32, f32, f32);
    /* 803070D0 */ virtual void drawOut(f32, f32, f32, f32, f32, f32, f32, f32);
    /* 80304EF0 */ virtual void drawOut(JGeometry::TBox2<f32> const&, JGeometry::TBox2<f32> const&);
    /* 80305264 */ virtual void load(_GXTexMapID, u8);
    /* 80307134 */ virtual void load(u8);
    /* 80305ED4 */ virtual void setBlendColorRatio(f32, f32);
    /* 80305F34 */ virtual void setBlendAlphaRatio(f32, f32);
    /* 80305F94 */ virtual const ResTIMG* changeTexture(ResTIMG const*, u8);
    /* 803060DC */ virtual const ResTIMG* changeTexture(char const*, u8);
    /* 80306134 */ virtual const ResTIMG* changeTexture(ResTIMG const*, u8, JUTPalette*);
    /* 80306298 */ virtual const ResTIMG* changeTexture(char const*, u8, JUTPalette*);
    /* 803062F8 */ virtual JUTTexture* getTexture(u8) const;
    /* 80306350 */ virtual u8 getTextureCount() const;
    /* 80306370 */ virtual bool setBlack(JUtility::TColor);
    /* 803063F8 */ virtual bool setWhite(JUtility::TColor);
    /* 80306480 */ virtual bool setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 803068F8 */ virtual void getBlack() const;
    /* 80306958 */ virtual void getWhite() const;
    /* 80256034 */ virtual void getMaterial() const;
    /* 80303B80 */ virtual void drawFullSet(f32, f32, f32, f32, f32 (*)[3][4]);
    /* 80303BDC */ virtual void drawTexCoord(f32, f32, f32, f32, s16, s16, s16, s16, s16, s16, s16,
                                             s16, f32 (*)[3][4]);
    /* 80306DC8 */ virtual u8 getUsableTlut(u8);

private:
    /* 0x150 */ J2DMaterial* mMaterial;
    /* 0x154 */ u16 field_0x154;
    /* 0x156 */ u16 field_0x156;
    /* 0x158 */ u16 field_0x158[4];
    /* 0x160 */ f32 field_0x160[6];  // related to blend color ratio
    /* 0x178 */ f32 field_0x178[6];  // related to blend alpha ratio
    /* 0x190 */ u8 field_0x190;
    /* 0x194 */ int field_0x194;
    /* 0x198 */ int field_0x198;
};

#endif /* J2DPICTUREEX_H */
