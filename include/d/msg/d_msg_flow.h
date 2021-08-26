#ifndef D_MSG_D_MSG_FLOW_H
#define D_MSG_D_MSG_FLOW_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct mesg_flow_node_branch {
    /* 0x00 */ int field_0x0;
    /* 0x04 */ u16 param;
};

struct mesg_flow_node_event {
    /* 0x00 */ int field_0x0;
    /* 0x04 */ u8 param;
};

struct mesg_flow_node {};

class dMsgFlow_c {
public:
    /* 80249F00 */ dMsgFlow_c();
    /* 80249F48 */ ~dMsgFlow_c();
    /* 80249F90 */ void init(fopAc_ac_c*, int, int, fopAc_ac_c**);
    /* 8024A13C */ void checkOpenDoor(fopAc_ac_c*, int*);
    /* 8024A2D8 */ void doFlow(fopAc_ac_c*, fopAc_ac_c**, int);
    /* 8024A424 */ void checkEventRender(int*, int*, int*, int*);
    /* 8024A4C4 */ void remove();
    /* 8024A528 */ void getEventId(int*);
    /* 8024A538 */ void getMsgNo();
    /* 8024A540 */ void getNowMsgNo();
    /* 8024A548 */ void getMsg();
    /* 8024A580 */ void setInitValue(int);
    /* 8024A618 */ void setInitValueGroupChange(int, fopAc_ac_c**);
    /* 8024A6EC */ void getMsgDataBlock(char const*);
    /* 8024A784 */ void getInitNodeIndex(u16);
    /* 8024A7CC */ void setNodeIndex(u16, fopAc_ac_c**);
    /* 8024A95C */ void setSelectMsg(mesg_flow_node*, mesg_flow_node*, fopAc_ac_c*);
    /* 8024AA50 */ void setNormalMsg(mesg_flow_node*, fopAc_ac_c*);
    /* 8024AB30 */ void messageNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024AD54 */ void branchNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024ADEC */ void eventNodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024AFF8 */ void nodeProc(fopAc_ac_c*, fopAc_ac_c**);
    /* 8024B0F0 */ int getParam(u16*, u16*, u8*);
    /* 8024B108 */ void getParam(u8*, u8*);
    /* 8024B130 */ int getParam(u8*);
    /* 8024B138 */ void query001(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B180 */ void query002(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B208 */ void query003(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B250 */ void query004(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B2C0 */ void query005(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B2F8 */ void query006(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B32C */ void query007(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B45C */ void query008(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B4A4 */ void query009(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B4D0 */ void query010(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B504 */ void query011(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B54C */ void query012(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B584 */ void query013(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B5BC */ void query014(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B5F4 */ void query015(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B62C */ void query016(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B664 */ void query017(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B6A8 */ void query018(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B6EC */ void query019(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B730 */ void query020(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B774 */ void query021(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B8E4 */ void query022(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B918 */ void query023(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B954 */ void query024(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B974 */ void query025(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B9BC */ void query026(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024B9E8 */ void query027(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BA4C */ void query028(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BAA0 */ void query029(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BAE0 */ void query030(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB18 */ void query031(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB74 */ void query032(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BB9C */ void query033(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BBE4 */ void query034(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC14 */ void query035(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC3C */ void query036(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BC80 */ void query037(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BCC4 */ void query038(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BDB0 */ void query039(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BE4C */ void query040(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BF50 */ void query041(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024BFEC */ void query042(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C0A8 */ void query043(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C144 */ void query044(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C18C */ void query045(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C218 */ void query046(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C248 */ bool query047(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C250 */ void query048(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C2A0 */ void query049(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C2FC */ void query050(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C340 */ void query051(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3A0 */ void query052(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3D4 */ void query053(mesg_flow_node_branch*, fopAc_ac_c*, int);
    /* 8024C3FC */ int event000(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C488 */ int event001(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C514 */ int event002(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C550 */ int event003(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C590 */ int event004(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C5F0 */ void event005(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C654 */ void event006(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C694 */ void event007(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C6D8 */ void event008(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C744 */ void event009(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C76C */ void event010(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C7F8 */ void event011(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C884 */ bool event012(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C88C */ void event013(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C8CC */ void event014(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024C994 */ void event015(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CA5C */ void event016(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CA94 */ void event017(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CBB0 */ void event018(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CCA4 */ bool event019(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CCAC */ void event020(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CD84 */ void event021(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CDAC */ void event022(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CE40 */ void event023(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF2C */ void event024(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF54 */ void event025(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024CF9C */ void event026(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D004 */ void event027(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D3C4 */ void event028(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D500 */ void event029(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D544 */ void event030(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D5BC */ void event031(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D5EC */ void event032(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D6BC */ void event033(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D788 */ void event034(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D7C8 */ void event035(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D870 */ void event036(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D8C4 */ void event037(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D918 */ void event038(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D93C */ void event039(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024D970 */ void event040(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024DA78 */ void event041(mesg_flow_node_event*, fopAc_ac_c*);
    /* 8024DAA8 */ bool event042(mesg_flow_node_event*, fopAc_ac_c*);

    static u8 mQueryList[636];
    static u8 mEventList[516];

private:
    /* 0x00 */ void* vtable;
    /* 0x04 */ void* field_0x04;
    /* 0x08 */ void* field_0x08;
    /* 0x0C */ void* field_0x0c;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ fopAc_ac_c* field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e[2];
    /* 0x20 */ int mMsg;
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
    /* 0x3A */ s16 mChoiceNo;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ u8 field_0x40;
    /* 0x41 */ u8 field_0x41;
    /* 0x42 */ s8 field_0x42;
    /* 0x43 */ s8 field_0x43;
    /* 0x44 */ s8 field_0x44;
    /* 0x45 */ s8 field_0x45;
    /* 0x46 */ u8 field_0x46;
    /* 0x47 */ u8 field_0x47;
    /* 0x48 */ u8 mNonStopJunpFlowFlag;
};

#endif /* D_MSG_D_MSG_FLOW_H */
