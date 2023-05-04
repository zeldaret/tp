#ifndef D_MSG_D_MSG_CLASS_H
#define D_MSG_D_MSG_CLASS_H

#include "JSystem/JMessage/control.h"
#include "JSystem/JMessage/processor.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/msg/d_msg_out_font.h"
#include "f_op/f_op_msg.h"

class J2DTextBox;
class JUTFont;

struct JMSMesgEntry_c {
    /* 0x00 */ u32 mStringOffset;
    /* 0x04 */ u16 mStringId;
    /* 0x06 */ u16 field_0x04;
    /* 0x08 */ u8 field_0x08;
    /* 0x09 */ u8 field_0x09;
    /* 0x0A */ u8 field_0x0a;
    /* 0x0B */ u8 field_0x0b;
    /* 0x0C */ u8 field_0x0c;
    /* 0x0D */ u8 field_0x0d;
    /* 0x0E */ u8 field_0x0e;
    /* 0x0F */ u8 field_0x0f;
    /* 0x10 */ u32 field_0x10;
};  // Size: 0x14

struct JMSMesgHeader_c {
    /* 0x00 */ u32 magic;
    /* 0x04 */ u32 sectionSize;
    /* 0x08 */ u16 entryCount;
    /* 0x0A */ u16 entrySize;
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u16 field_0xe;
};  // Size: 0x10

struct STControl;
struct dMsgObject_c;
struct jmessage_tReference : public JMessage::TReference {
    /* 80228B04 */ jmessage_tReference();
    /* 80228D28 */ void calcDistance();
    /* 80228DE0 */ u8 getLineMax();
    /* 80228E6C */ bool isKanban();
    /* 80228EA0 */ bool isPlaceName();
    /* 80228ED4 */ bool isBossName();
    /* 80228F08 */ bool isSaveSeq();
    /* 80228F3C */ bool isBook();
    /* 80228F70 */ bool isStaffRoll();
    /* 80228FA4 */ u8 isHowl();
    /* 80228FD8 */ bool isMidona();
    /* 8022900C */ void resetReference();
    /* 80229034 */ void pageSend();
    /* 80229168 */ void selectMessage();
    /* 802294A8 */ void inputNumber();
    /* 80229730 */ const char* getWord(int);
    /* 80229744 */ void resetWord();
    /* 80229768 */ void setCharactor(u16);
    /* 80229788 */ void addCharactor(u16);
    /* 802297B0 */ void resetCharactor();
    /* 802297E4 */ void shiftCharCountBuffer();
    /* 80229810 */ void resetCharCountBuffer();
    /* 80229848 */ void allsetCharCountBuffer();
    /* 8022986C */ bool isCharSend();
    /* 802298DC */ bool isLightSend();
    /* 8022994C */ bool isLightEnd();
    /* 802299AC */ void decideOutFontRupeeColor(int);
    /* 80232A20 */ cXyz getActorPos();

    /* 80238C78 */ void setActorPos(cXyz pos) { mActorPos = pos; }

    bool isSelectSetCancelFlag() { return mSelectSetCancelFlag != 0; }
    BOOL isSelectRubyFlag(int i_flag) {
        return mSelectRubyFlag & (u8)(1 << i_flag) ? 1 : 0;
    }

    void setAddCharAllAlphaRate(f32 i_alphaRate) { mAddCharAllAlphaRate = i_alphaRate; }
    void setCharAllAlphaRate(f32 i_alphaRate) { mCharAllAlphaRate = i_alphaRate; }
    void resetNowLightCount() { mNowLightCount = 0; }
    void resetDrawLightCount() { mDrawLightCount = 0; }
    void setBatchColorFlag(u8 i_flag) { mBatchColorFlag = i_flag; }
    void setSendTimer(s16 i_timer) { mSendTimer = i_timer; }
    void setSendFlag(u8 i_flag) { mSendFlag = i_flag; }
    void setSelectNum(u8 i_num) { mSelectNum = i_num; }
    void setSelectType(u8 i_type) { mSelectType = i_type; }
    void resetInputFigure() { mInputFigure = 0; }
    void onButtonTagStopFlag() { mButtonTagStopFlag = 1; }
    void setDemoFrame(u32 i_frame) { mDemoFrame = i_frame; }
    void setNowColorType(u8 i_colorType) { mNowColorType = i_colorType; }
    void setNowTagScale(u16 i_tagScale) { mNowTagScale = i_tagScale; }
    void setRevoMessageID(u32 i_msgID) { mRevoMessageID = i_msgID; }
    void setPageLine(int i_no, s8 i_pageLine) { mPageLine[i_no] = i_pageLine; }
    void setPageLineMax(int i_no, s8 i_pageLineMax) { mPageLineMax[i_no] = i_pageLineMax; }
    void setPageType(int i_no, u8 i_pageType) { mPageType[i_no] = i_pageType; }
    void setLineArrange(int i_no, u8 i_arrange) { mLineArrange[i_no] = i_arrange; }
    void setLineScale(int i_no, u16 i_lineScale) { mLineScale[i_no] = i_lineScale; }
    void setSelLength(int i_no, f32 i_selLength) { mSelLength[i_no] = i_selLength; }
    void offSelectRubyFlag(int i_flag) { mSelectRubyFlag &= ~(u8)(1 << i_flag); }
    void setPageEndCount(s16 i_endCount) { mPageEndCount = i_endCount; }
    void onBombNameUseFlag() { mBombNameUseFlag = 1; }
    void onSelectRubyFlag(int i_flag) { mSelectRubyFlag |= (1 << i_flag); }

    void setLineLength(int i_no, f32 i_strLen, f32 i_spaceLen) {
        mStrLength[i_no] = i_strLen;
        mSpaceLength[i_no] = i_spaceLen;
    }

    void setSelectPos(u8 i_pos) {
        if (!isSelectSetCancelFlag()) {
            mSelectPos = i_pos;
        }
    }

    dMsgObject_c* getObjectPtr() { return mpObjectPtr; }
    u8 getForm() { return mForm; }
    u8 getNowLightCount() { return mNowLightCount; }
    u8 getCharCountBuffer(int i_no) { return mCharCountBuffer[i_no]; }
    u8 getDrawLightCount() { return mDrawLightCount; }
    u8 getFukiKind() { return mFukiKind; }
    s16 getSendTimer() { return mSendTimer; }
    u8 getSelectNum() { return mSelectNum; }
    u8 getSelectType() { return mSelectType; }
    const char* getSelMsgPtr() { return mpSelMsgPtr; }
    f32 getDistanceScale() { return mDistanceScale; }

    /* 80228CB4 */ virtual ~jmessage_tReference();

    /* 0x0008 */ STControl* mpStick;
    /* 0x000C */ u16 mCharactor[0x200];
    /* 0x040C */ s16 field_0x40c;
    /* 0x040E */ s16 field_0x40e;
    /* 0x0410 */ s16 mCountBackUp;
    /* 0x0414 */ cXyz mActorPos;
    /* 0x0420 */ f32 mFontSizeX;
    /* 0x0424 */ f32 mFontSizeY;
    /* 0x0428 */ f32 mRubySize;
    /* 0x042C */ f32 mTBoxWidth;
    /* 0x0430 */ f32 mTBoxHeight;
    /* 0x0434 */ f32 mLineSpace;
    /* 0x0438 */ f32 mCharSpace;
    /* 0x043C */ f32 mRubyCharSpace;
    /* 0x0440 */ f32 mSelFontSize;
    /* 0x0444 */ f32 mSelRubySize;
    /* 0x0448 */ f32 mSelTBoxWidth;
    /* 0x044C */ f32 mSelCharSpace;
    /* 0x0450 */ f32 mSelRubyCharSpace;
    /* 0x0454 */ f32 mDistanceScale;
    /* 0x0458 */ f32 mAddCharAllAlphaRate;
    /* 0x045C */ f32 mCharAllAlphaRate;
    /* 0x0460 */ f32 mAddCharAlpha;
    /* 0x0464 */ f32 mCharAlpha;
    /* 0x0468 */ f32 mStrLength[40];
    /* 0x0508 */ f32 mSpaceLength[40];
    /* 0x05A8 */ f32 mSelLength[3];
    /* 0x05B4 */ u32 mDemoFrame;
    /* 0x05B8 */ u32 mRevoMessageID;
    /* 0x05BC */ u16* mpStatus;
    /* 0x05C0 */ dMsgObject_c* mpObjectPtr;
    /* 0x05C4 */ char* mpSelMsgPtr;
    /* 0x05C8 */ JUTFont* mpFont;
    /* 0x05CC */ s16 mStartLineCount;
    /* 0x05CE */ s16 mEndLineCount;
    /* 0x05D0 */ u16 mLineCount;
    /* 0x05D2 */ s16 field_0x5d2;
    /* 0x05D4 */ s16 mPageEndCount;
    /* 0x05D6 */ s16 mSendTimer;
    /* 0x05D8 */ s16 mCharCnt;
    /* 0x05DA */ s16 mPageNum;
    /* 0x05DC */ u8 mNowLightCount;
    /* 0x05DD */ u8 mDrawLightCount;
    /* 0x05DE */ u16 mMsgID;
    /* 0x05E0 */ u16 mLineScale[40];
    /* 0x0630 */ u16 mTopTagScale;
    /* 0x0632 */ u16 mNowTagScale;
    /* 0x0634 */ char mWord[10][100];
    /* 0x0A1C */ char mText[0x200];
    /* 0x0C1C */ char mTextS[0x200];
    /* 0x0E1C */ char mRuby[0x200];
    /* 0x101C */ u8 mSelText[3][50];
    /* 0x10B2 */ u8 mSelRuby[3][80];
    /* 0x11A2 */ s8 mPageLine[40];
    /* 0x11CA */ s8 mPageLineMax[40];
    /* 0x11F2 */ u8 mPageType[40];
    /* 0x121A */ u8 mLineArrange[40];
    /* 0x1242 */ u8 mSelectNum;
    /* 0x1243 */ u8 mSelectType;
    /* 0x1244 */ u8 mSelectPos;
    /* 0x1245 */ u8 mFukiPosType;
    /* 0x1246 */ u8 mFukiKind;
    /* 0x1247 */ u8 mForm;
    /* 0x1248 */ u8 mArrange;
    /* 0x1249 */ u8 mNowColorType;
    /* 0x124A */ u8 mTopColorType;
    /* 0x124B */ bool mButtonTagStopFlag;
    /* 0x124C */ u8 mSendFlag;
    /* 0x124D */ u8 mStopFlag;
    /* 0x124E */ u8 mSelectRubyFlag;
    /* 0x124F */ u8 mInputFigure;
    /* 0x1250 */ u8 mOutFontRupeeColor;
    /* 0x1251 */ s8 mNowWordCount;
    /* 0x1252 */ s8 mTopWordCount;
    /* 0x1253 */ u8 mCharCountBuffer[31];
    /* 0x1272 */ bool mLightBatchFlag;
    /* 0x1273 */ bool mBatchFlag;
    /* 0x1274 */ bool mSelectSetCancelFlag;
    /* 0x1275 */ bool mBombNameUseFlag;
    /* 0x1276 */ u8 mBatchColorFlag;
};  // Size: 0x1278

struct jmessage_tMeasureProcessor : public JMessage::TRenderingProcessor {
    /* 80229A28 */ jmessage_tMeasureProcessor(jmessage_tReference const*);
    /* 8022B0B0 */ void do_scale(f32);
    /* 8022B18C */ void do_space(u32);
    /* 8022B3EC */ void do_pageType(int);
    /* 8022B454 */ void do_name1();
    /* 8022B458 */ void do_rubyset(void const*, u32);
    /* 8022B4E0 */ void push_word(char*);

    /* 8022B5F4 */ virtual ~jmessage_tMeasureProcessor();
    /* 80229AC4 */ virtual void do_begin(void const*, char const*);
    /* 80229CB4 */ virtual void do_end();
    /* 80229E3C */ virtual void do_character(int);
    /* 8022A268 */ virtual bool do_tag(u32, void const*, u32);

    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ s16 mTotalLineCnt;
    /* 0x3E */ s16 field_0x3e;
    /* 0x40 */ s16 field_0x40;
    /* 0x42 */ u16 field_0x42;
    /* 0x44 */ u8 field_0x44;
    /* 0x45 */ u8 mSelectType;
    /* 0x46 */ u8 field_0x46;
    /* 0x47 */ u8 field_0x47;
    /* 0x48 */ s8 field_0x48;
    /* 0x49 */ s8 field_0x49;
    /* 0x4A */ u8 mPageLineMax;
    /* 0x4B */ u8 field_0x4b;
    /* 0x4C */ u8 field_0x4c;
    /* 0x4D */ u8 field_0x4d;
};  // Size: 0x50

struct jmessage_tControl;
struct jmessage_tSequenceProcessor : public JMessage::TSequenceProcessor,
                                     public jmessage_tMeasureProcessor {
    /* 8022B558 */ jmessage_tSequenceProcessor(jmessage_tReference const*, jmessage_tControl*);
    /* 8022C904 */ void do_name1();
    /* 8022C908 */ void do_space(u32);
    /* 8022CA24 */ void do_rubyset(void const*, u32);
    /* 8022CAAC */ void push_word();
    /* 8022CB10 */ void messageSePlay(u8, u8, cXyz*);
    /* 8022CBE8 */ void calcStringLength();

    /* 8023299C */ virtual ~jmessage_tSequenceProcessor();
    /* 8022B654 */ virtual void do_reset();
    /* 8022B658 */ virtual void do_begin(void const*, char const*);
    /* 8022BA3C */ virtual void do_end();
    /* 8022BFE0 */ virtual void do_character(int);
    /* 8022C1A0 */ virtual bool do_tag(u32, void const*, u32);
    /* 8022BB7C */ virtual bool do_isReady();
    /* 8022C8FC */ virtual bool do_jump_isReady();
    /* 8022CBE4 */ virtual void do_jump(void const*, char const*);

    /* 0x4C jmessage_tMeasureProcessor */
    /* 0x9C */ const void* field_0x9c;
    /* 0xA0 */ const char* field_0xa0;
    /* 0xA4 */ u16 field_0xa4;
    /* 0xA6 */ u16 field_0xa6;
    /* 0xA8 */ s16 field_0xa8;
    /* 0xAA */ u16 field_0xaa;
    /* 0xAC */ u8 field_0xac;
    /* 0xAD */ u8 field_0xad;
    /* 0xAE */ u8 field_0xae;
    /* 0xAF */ u8 mForceForm;
    /* 0xB0 */ u8 mMouthCheck;
    /* 0xB1 */ u8 field_0xb1;
    /* 0xB2 */ u8 field_0xb2;
    /* 0xB3 */ u8 field_0xb3;
    /* 0xB4 */ u8 field_0xb4;
    /* 0xB5 */ s8 field_0xb5;
};

struct CharInfo_c;
struct jmessage_tRenderingProcessor : public JMessage::TRenderingProcessor {
    /* 8022CCB0 */ jmessage_tRenderingProcessor(jmessage_tReference const*);
    /* 8022E12C */ void resetRendering();
    /* 8022E17C */ void do_widthcenter();
    /* 8022E260 */ void do_selwidthcenter(int);
    /* 8022E318 */ void do_heightcenter();
    /* 8022E7CC */ void do_color(u8);
    /* 8022E860 */ void do_scale(f32);
    /* 8022E960 */ void do_linedown(s16);
    /* 8022E9C0 */ void do_transY(s16, bool);
    /* 8022EAE4 */ void do_outfont(u8, u32);
    /* 8022ED10 */ void do_arrow2();
    /* 8022EECC */ void getLineLength(int);
    /* 8022EF00 */ void do_strcat(char*, bool, bool, bool);
    /* 8022F148 */ void do_rubyset(void const*, u32);
    /* 8022F384 */ void do_rubystrcat(char*, char*, f32, f32);
    /* 8022F53C */ void do_name1();
    /* 8022F540 */ void do_numset(s16);
    /* 8022F734 */ void push_word();
    /* 8022F784 */ void getCharInfo(f32, f32, f32, f32, f32);

    /* 8023293C */ virtual ~jmessage_tRenderingProcessor();
    /* 8022CDC8 */ virtual void do_reset();
    /* 8022CDCC */ virtual void do_begin(void const*, char const*);
    /* 8022CFD8 */ virtual void do_end();
    /* 8022D0A0 */ virtual void do_character(int);
    /* 8022D74C */ virtual bool do_tag(u32, void const*, u32);

    /* 0x038 */ COutFont_c* mpOutFont;
    /* 0x03C */ CharInfo_c* mCharInfoPtr;
    /* 0x040 */ s16* mpCharInfoCnt;
    /* 0x044 */ f32 field_0x44;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 mTextInitPosX;
    /* 0x054 */ f32 mTextInitPosY;
    /* 0x058 */ f32 mTextInitScaleX;
    /* 0x05C */ f32 mTextInitScaleY;
    /* 0x060 */ f32 mSelTextInitPosX[3];
    /* 0x06C */ f32 mSelTextInitPosY[3];
    /* 0x078 */ f32 mTextInitOffsetPos;
    /* 0x07C */ f32 field_0x7c[40];
    /* 0x11C */ int field_0x11c;
    /* 0x120 */ u32 mCCColor;
    /* 0x124 */ u32 mGCColor;
    /* 0x128 */ f32 field_0x128;
    /* 0x12C */ f32 field_0x12c;
    /* 0x130 */ f32 field_0x130;
    /* 0x134 */ f32 field_0x134;
    /* 0x138 */ f32 field_0x138;
    /* 0x13C */ u16 field_0x13c;
    /* 0x13E */ u16 field_0x13e;
    /* 0x140 */ u16 field_0x140;
    /* 0x142 */ u16 field_0x142;
    /* 0x144 */ u16 field_0x144;
    /* 0x146 */ u16 field_0x146;
    /* 0x148 */ u16 field_0x148;
    /* 0x14A */ u16 field_0x14a;
    /* 0x14C */ u8 field_0x14c;
    /* 0x14D */ u8 field_0x14d;
    /* 0x14E */ u8 field_0x14e;
    /* 0x14F */ u8 field_0x14f;
    /* 0x150 */ u8 mColorNo;
    /* 0x151 */ u8 field_0x151;
    /* 0x152 */ u8 field_0x152[0x184 - 0x152];
    /* 0x184 */ u8 field_0x184;
    /* 0x185 */ u8 field_0x185;
    /* 0x186 */ u8 field_0x186;
    /* 0x187 */ u8 field_0x187;
};

struct jmessage_string_tControl : public JMessage::TControl {
    /* 8022FB5C */ jmessage_string_tControl();

    /* 802328DC */ virtual ~jmessage_string_tControl();
};

struct jmessage_string_tReference : public JMessage::TReference {
    /* 8022F8C0 */ jmessage_string_tReference();
    /* 8022F9AC */ void init(J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, u8);
    /* 8022FA2C */ void setCharactor(u16);
    /* 8022FA30 */ void addCharactor(u16);
    /* 8022FA34 */ void resetCharactor();
    /* 8022FA38 */ void getLineLength(int);
    /* 8022FA6C */ void addLineLength(int, f32);
    /* 8022FA98 */ void getOutfontLength(int);
    /* 8022FACC */ void setOutfontLength(int, f32);
    /* 8022FAF0 */ void clearOutfontLength(int);
    /* 8022FB24 */ void getLineCountNowPage();

    /* 8022F94C */ virtual ~jmessage_string_tReference();

    /* 0x08 */ J2DTextBox* mPanePtr;
    /* 0x0C */ J2DTextBox* mRubyPanePtr;
    /* 0x10 */ COutFont_c* mOutFontPtr;
    /* 0x14 */ JUTFont* mpFont;
    /* 0x18 */ f32 mLineLength[12];
    /* 0x48 */ f32 mOutfontLength[12];
    /* 0x78 */ u32 mCCColor;
    /* 0x7C */ u32 mGCColor;
    /* 0x80 */ s16 mLineCount;
    /* 0x82 */ u8 mLineMax;
    /* 0x83 */ u8 mNowPage;
    /* 0x84 */ u8 mFlags;
};

struct jmessage_string_tMeasureProcessor : public JMessage::TRenderingProcessor {
    /* 8022FB98 */ jmessage_string_tMeasureProcessor(jmessage_string_tReference const*);
    /* 8023098C */ void do_rubyset(void const*, u32);

    /* 80230A5C */ virtual ~jmessage_string_tMeasureProcessor();
    /* 8022FBE4 */ virtual void do_begin(void const*, char const*);
    /* 8022FC14 */ virtual void do_end();
    /* 8022FC28 */ virtual void do_character(int);
    /* 8022FDF0 */ virtual void do_tag(u32, void const*, u32);

    /* 0x38 */ jmessage_string_tReference* mpReference;
};

struct jmessage_string_tSequenceProcessor : public JMessage::TSequenceProcessor, public jmessage_string_tMeasureProcessor {
    /* 80230A08 */ jmessage_string_tSequenceProcessor(jmessage_string_tReference const*,
                                                      jmessage_string_tControl*);

    /* 80232858 */ virtual ~jmessage_string_tSequenceProcessor();
    /* 80230ABC */ virtual void do_reset();
    /* 80230AC0 */ virtual void do_begin(void const*, char const*);
    /* 80230B7C */ virtual void do_end();
    /* 80230B88 */ virtual void do_character(int);
    /* 80230B8C */ virtual void do_tag(u32, void const*, u32);
    /* 80230B80 */ virtual bool do_isReady();
    /* 80230BBC */ virtual bool do_jump_isReady();
    /* 80230BC4 */ virtual void do_jump(void const*, char const*);
};

struct jmessage_string_tRenderingProcessor : public JMessage::TRenderingProcessor {
    /* 80230BC8 */ jmessage_string_tRenderingProcessor(jmessage_string_tReference const*);
    /* 80230C20 */ void getLineCountNowPage();
    /* 80231D70 */ void do_widthcenter();
    /* 80231EF0 */ void do_heightcenter();
    /* 80232044 */ void do_strcat(char*);
    /* 802320B0 */ void do_rubyset(void const*, u32);
    /* 80232260 */ void do_rubystrcat(char*);
    /* 802322CC */ void do_outfont(u8);
    /* 8023256C */ void do_color(u8);
    /* 80232600 */ void do_scale(f32);
    /* 80232690 */ void do_linedown(s16);
    /* 802326E4 */ void do_numset(s16);
    /* 802327BC */ void push_word(char const*);

    /* 802327F8 */ virtual ~jmessage_string_tRenderingProcessor();
    /* 80230C5C */ virtual void do_reset();
    /* 80230CA0 */ virtual void do_begin(void const*, char const*);
    /* 80230CE8 */ virtual void do_end();
    /* 80230D48 */ virtual void do_character(int);
    /* 80231110 */ virtual void do_tag(u32, void const*, u32);

    /* 0x38 */ jmessage_string_tReference* mpReference;
};

#endif /* D_MSG_D_MSG_CLASS_H */
