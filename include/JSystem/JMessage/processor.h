#ifndef JMESSAGE_PROCESSOR_H
#define JMESSAGE_PROCESSOR_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "JSystem/JUtility/JUTFont.h"

namespace JMessage {
struct TResource;
struct TResourceContainer;

struct TReference {
    /* 802A7AF8 */ virtual ~TReference();
    /* 802A7B40 */ virtual bool do_word(u32) const;

    TResourceContainer* pcResource_;
};

struct TProcessor {
    struct TStack_ {
        /* 0x0 */ int upsz_;  // size
        /* 0x4 */ const char* stack[4];
    };  // Size: 0x14

    struct TProcess_ {
        /* 0x0 */ void* pfnProcess_CharacterEnd;
        struct {
            /* 0x0 */ void* pfn;
            /* 0x4 */ u32 pcBase;
            /* 0x8 */ u32 pOffset;
            /* 0xC */ u32 uRest;
        }
        /* 0x4 */ rData;
    };  // Size: 0x14

    /* 802A7B90 */ void reset();
    /* 802A7BF8 */ void stack_pushCurrent(char const*);
    /* 802A7C30 */ void stack_popCurrent();
    /* 802A7C54 */ void getResource_groupID(u16) const;
    /* 802A7CD4 */ void toMessageCode_messageID(u32, u32, bool*) const;
    /* 802A7E38 */ void on_select_begin(char const* (*)(JMessage::TProcessor*), void const*,
                                        char const*, u32);
    /* 802A7EDC */ void on_select_end();
    /* 802A7F34 */ void on_select_separate();
    /* 802A7FE4 */ void on_tag_();
    /* 802A8090 */ void do_tag_(u32, void const*, u32);
    /* 802A81EC */ void process_character_();
    /* 802A828C */ void process_onCharacterEnd_normal_(JMessage::TProcessor*);
    /* 802A82F4 */ void process_onCharacterEnd_select_(JMessage::TProcessor*);
    /* 802A833C */ void process_onSelect_limited_(JMessage::TProcessor*);
    /* 802A8358 */ void process_onSelect_(JMessage::TProcessor*);
    /* 802A8C24 */ void on_message(u32) const;
    /* 802A8C44 */ void getMessageText_messageCode(u32) const;

    /* 802A7B48 */ virtual ~TProcessor();
    /* 802A7FC0 */ virtual void do_reset();
    /* 802A7FC4 */ virtual void do_begin(void const*, char const*);
    /* 802A7FC8 */ virtual void do_end();
    /* 802A7FCC */ virtual void do_character(int);
    /* 802A7FD0 */ virtual bool do_tag(u32, void const*, u32);
    /* 802A7FD8 */ virtual void do_select_begin(u32);
    /* 802A7FDC */ virtual void do_select_end();
    /* 802A7FE0 */ virtual void do_select_separate();
    /* 802A8084 */ virtual void do_resetStatus_(char const*);
    /* 802A8088 */ virtual bool do_setBegin_isReady_() const;

    /* 0x04 */ TReference* pReference_;
    /* 0x08 */ TResource* pResourceCache_;
    /* 0x0C */ const char* pszCurrent_;
    /* 0x10 */ TStack_ oStack_;
    /* 0x24 */ TProcess_ oProcess_;
};

struct TControl;

struct TSequenceProcessor : public TProcessor {
    enum SeqStatus {
        STATUS_NORMAL = 2,
        STATUS_JUMP,
        STATUS_BRANCH,
    };

    /* 802A8374 */ TSequenceProcessor(JMessage::TReference const*, JMessage::TControl*);
    /* 802A8418 */ void process(char const*);
    /* 802A85A4 */ void on_isReady();
    /* 802A85D0 */ void on_jump_register(void const* (*)(JMessage::TSequenceProcessor const*), u32);
    /* 802A85E4 */ void on_jump_isReady();
    /* 802A8610 */ void on_jump(void const*, char const*);
    /* 802A8690 */ void
    on_branch_register(void const* (*)(JMessage::TSequenceProcessor const*, u32), void const*, u32);
    /* 802A86A0 */ void on_branch_query(u32);
    /* 802A86D4 */ void on_branch_queryResult();
    /* 802A8700 */ void on_branch(void const*, char const*);
    /* 802A892C */ void process_setMessageIndex_reserved_(u16);
    /* 802A8944 */ void process_setMessageCode_(JMessage::TSequenceProcessor const*, u16, u16);
    /* 802A89B8 */ void process_onJump_limited_(JMessage::TSequenceProcessor const*);
    /* 802A89EC */ void process_onJump_(JMessage::TSequenceProcessor const*);
    /* 802A8A18 */ void process_onBranch_limited_(JMessage::TSequenceProcessor const*, u32);
    /* 802A8A50 */ void process_onBranch_(JMessage::TSequenceProcessor const*, u32);

    /* 802A83B8 */ virtual ~TSequenceProcessor();
    /* 802A87A4 */ virtual void do_resetStatus_(char const*);
    /* 802A87C0 */ virtual void do_setBegin_isReady_() const;
    /* 802A87D0 */ virtual void do_begin_(void const*, char const*);
    /* 802A87D4 */ virtual void do_end_();
    /* 802A87E0 */ virtual void do_tag_(u32, void const*, u32);
    /* 802A8780 */ virtual bool do_isReady();
    /* 802A8788 */ virtual bool do_jump_isReady();
    /* 802A8790 */ virtual void do_jump(void const*, char const*);
    /* 802A8794 */ virtual void do_branch_query(u32);
    /* 802A8798 */ virtual s32 do_branch_queryResult();
    /* 802A87A0 */ virtual void do_branch(void const*, char const*);

    /* 0x38 */ TControl* pControl_;
    /* 0x3C */ SeqStatus eStatus_;
    /* 0x40 */ TProcess_ oProcess2_;
};

struct TRenderingProcessor : public TProcessor {
    /* 802A8A84 */ TRenderingProcessor(JMessage::TReference const*);
    /* 802A8B20 */ void process(char const*);

    /* 802A8AC0 */ virtual ~TRenderingProcessor();
    /* 802A8BA4 */ virtual void do_begin_(void const*, char const*);
    /* 802A8BA8 */ virtual void do_end_();
    /* 802A8BAC */ virtual void do_tag_(u32, void const*, u32);
};
};  // namespace JMessage

struct STControl;
struct dMsgObject_c;
struct jmessage_tReference : public JMessage::TReference {
    /* 80228B04 */ jmessage_tReference();
    /* 80228D28 */ void calcDistance();
    /* 80228DE0 */ void getLineMax();
    /* 80228E6C */ void isKanban();
    /* 80228EA0 */ void isPlaceName();
    /* 80228ED4 */ void isBossName();
    /* 80228F08 */ void isSaveSeq();
    /* 80228F3C */ void isBook();
    /* 80228F70 */ void isStaffRoll();
    /* 80228FA4 */ void isHowl();
    /* 80228FD8 */ void isMidona();
    /* 8022900C */ void resetReference();
    /* 80229034 */ void pageSend();
    /* 80229168 */ void selectMessage();
    /* 802294A8 */ void inputNumber();
    /* 80229730 */ void getWord(int);
    /* 80229744 */ void resetWord();
    /* 80229768 */ void setCharactor(u16);
    /* 80229788 */ void addCharactor(u16);
    /* 802297B0 */ void resetCharactor();
    /* 802297E4 */ void shiftCharCountBuffer();
    /* 80229810 */ void resetCharCountBuffer();
    /* 80229848 */ void allsetCharCountBuffer();
    /* 8022986C */ void isCharSend();
    /* 802298DC */ void isLightSend();
    /* 8022994C */ void isLightEnd();
    /* 802299AC */ void decideOutFontRupeeColor(int);
    /* 80232A20 */ void getActorPos();

    /* 80238C78 */ void setActorPos(cXyz pos) {
        mActorPos = pos;
    }

    /* 80228CB4 */ virtual ~jmessage_tReference();

private:
    /* 0x0008 */ STControl* mpStick;
    /* 0x000C */ u16 field_0xc[0x200];
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
    /* 0x0A1C */ char mTextPtr[0x200];
    /* 0x0C1C */ char mTextSPtr[0x200];
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
    /* 0x1248 */ u8 field_0x1248;
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
    /* 0x1276 */ bool mBatchColorFlag;
};  // Size: 0x1278

struct jmessage_tControl;
struct jmessage_tSequenceProcessor : public JMessage::TSequenceProcessor {
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
    /* 8022C1A0 */ virtual void do_tag(u32, void const*, u32);
    /* 8022BB7C */ virtual void do_isReady();
    /* 8022C8FC */ virtual bool do_jump_isReady();
    /* 8022CBE4 */ virtual void do_jump(void const*, char const*);
};

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
    /* 8022D74C */ virtual void do_tag(u32, void const*, u32);
};

#endif /* JMESSAGE_PROCESSOR_H */
