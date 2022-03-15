#ifndef D_MSG_D_MSG_FLOW_H
#define D_MSG_D_MSG_FLOW_H

#include "d/msg/d_msg_class.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

// all mesg_flow_node structs members might be wrong
struct mesg_flow_node {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u16 msg_index;
    /* 0x04 */ u8 params[4];
};  // Size: 0x8

struct mesg_flow_node_branch {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u16 msg_index;
    /* 0x04 */ u16 params[2];
};

struct mesg_flow_node_event {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u16 msg_index;
    /* 0x04 */ u8 params[4];
};  // Size: 0x8

class dMsgFlow_c;
typedef int (dMsgFlow_c::*queryFunc)(mesg_flow_node_branch*, fopAc_ac_c*, int);
typedef int (dMsgFlow_c::*eventFunc)(mesg_flow_node_event*, fopAc_ac_c*);

class dMsgFlow_c {
public:
    /* 80249F00 */ dMsgFlow_c();
    /* 80249F48 */ virtual ~dMsgFlow_c();

    /* 80249F90 */ void init(fopAc_ac_c*, int, int, fopAc_ac_c**);
    /* 8024A13C */ void checkOpenDoor(fopAc_ac_c*, int*);
    /* 8024A2D8 */ int doFlow(fopAc_ac_c*, fopAc_ac_c**, int);
    /* 8024A424 */ int checkEventRender(int*, int*, int*, int*);
    /* 8024A4C4 */ void remove();
    /* 8024A528 */ u16 getEventId(int*);
    /* 8024A538 */ int getMsgNo();
    /* 8024A540 */ int getNowMsgNo();
    /* 8024A548 */ msg_class* getMsg();
    /* 8024A580 */ void setInitValue(int);
    /* 8024A618 */ void setInitValueGroupChange(int, fopAc_ac_c**);
    /* 8024A6EC */ u8* getMsgDataBlock(char const*);
    /* 8024A784 */ u16 getInitNodeIndex(u16);
    /* 8024A7CC */ void setNodeIndex(u16, fopAc_ac_c**);
    /* 8024A95C */ void setSelectMsg(mesg_flow_node*, mesg_flow_node*, fopAc_ac_c*);
    /* 8024AA50 */ void setNormalMsg(mesg_flow_node*, fopAc_ac_c*);
    /* 8024AB30 */ int messageNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024AD54 */ int branchNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024ADEC */ int eventNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024AFF8 */ int nodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024B0F0 */ int getParam(u16*, u16*, u8*);
    /* 8024B108 */ int getParam(u8*, u8*);
    /* 8024B130 */ int getParam(u8*);
    /* 8024B138 */ int query001(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B180 */ int query002(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B208 */ int query003(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B250 */ int query004(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B2C0 */ int query005(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B2F8 */ int query006(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B32C */ int query007(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B45C */ int query008(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B4A4 */ int query009(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B4D0 */ int query010(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B504 */ int query011(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B54C */ int query012(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B584 */ int query013(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B5BC */ int query014(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B5F4 */ int query015(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B62C */ int query016(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B664 */ int query017(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B6A8 */ int query018(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B6EC */ int query019(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B730 */ int query020(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B774 */ int query021(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B8E4 */ int query022(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B918 */ int query023(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B954 */ int query024(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B974 */ int query025(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B9BC */ int query026(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B9E8 */ int query027(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BA4C */ int query028(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BAA0 */ int query029(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BAE0 */ int query030(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB18 */ int query031(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB74 */ int query032(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB9C */ int query033(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BBE4 */ int query034(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC14 */ int query035(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC3C */ int query036(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC80 */ int query037(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BCC4 */ int query038(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BDB0 */ int query039(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BE4C */ int query040(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BF50 */ int query041(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BFEC */ int query042(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C0A8 */ int query043(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C144 */ int query044(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C18C */ int query045(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C218 */ int query046(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C248 */ int query047(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C250 */ int query048(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C2A0 */ int query049(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C2FC */ int query050(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C340 */ int query051(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3A0 */ int query052(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3D4 */ int query053(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3FC */ int event000(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C488 */ int event001(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C514 */ int event002(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C550 */ int event003(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C590 */ int event004(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C5F0 */ int event005(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C654 */ int event006(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C694 */ int event007(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C6D8 */ int event008(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C744 */ int event009(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C76C */ int event010(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C7F8 */ int event011(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C884 */ int event012(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C88C */ int event013(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C8CC */ int event014(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C994 */ int event015(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CA5C */ int event016(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CA94 */ int event017(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CBB0 */ int event018(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CCA4 */ int event019(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CCAC */ int event020(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CD84 */ int event021(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CDAC */ int event022(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CE40 */ int event023(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF2C */ int event024(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF54 */ int event025(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF9C */ int event026(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D004 */ int event027(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D3C4 */ int event028(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D500 */ int event029(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D544 */ int event030(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D5BC */ int event031(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D5EC */ int event032(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D6BC */ int event033(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D788 */ int event034(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D7C8 */ int event035(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D870 */ int event036(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D8C4 */ int event037(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D918 */ int event038(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D93C */ int event039(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D970 */ int event040(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024DA78 */ int event041(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024DAA8 */ int event042(mesg_flow_node_event*, fopAc_ac_c*);

    u8 isSelectMessage() { return mSelectMessage; }
    void onNonStopJunpFlowFlag() { mNonStopJunpFlowFlag = 1; }
    int getSelectNum() { return query005(NULL, NULL, 0); }

    static queryFunc mQueryList[53];
    static eventFunc mEventList[43];

private:
    /* 0x04 */ u8* mFlow_p;
    /* 0x08 */ u8* mLabelInfo_p;
    /* 0x0C */ mesg_flow_node* mFlowNodeTBL;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16* field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ u16 mFlow;
    /* 0x1E */ u8 field_0x1e[2];
    /* 0x20 */ u32 mMsg;
    /* 0x24 */ u8 mSelectMessage;
    /* 0x25 */ u8 field_0x25;
    /* 0x26 */ u8 field_0x26;
    /* 0x27 */ u8 field_0x27;
    /* 0x28 */ int mMsgNo;
    /* 0x2C */ int mNowMsgNo;
    /* 0x30 */ u16 field_0x30;
    /* 0x32 */ u16 mEventId;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ u16 field_0x38;
    /* 0x3A */ u16 mChoiceNo;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ u8 field_0x40;
    /* 0x41 */ u8 field_0x41;
    /* 0x42 */ u8 field_0x42;
    /* 0x43 */ u8 field_0x43;
    /* 0x44 */ u8 field_0x44;
    /* 0x45 */ u8 field_0x45;
    /* 0x46 */ u8 field_0x46;
    /* 0x47 */ u8 field_0x47;
    /* 0x48 */ u8 mNonStopJunpFlowFlag;
};

#endif /* D_MSG_D_MSG_FLOW_H */
