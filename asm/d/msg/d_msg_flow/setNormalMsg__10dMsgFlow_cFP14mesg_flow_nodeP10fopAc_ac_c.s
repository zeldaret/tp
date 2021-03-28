lbl_8024AA50:
/* 8024AA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024AA54  7C 08 02 A6 */	mflr r0
/* 8024AA58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024AA5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AA60  48 11 77 7D */	bl _savegpr_29
/* 8024AA64  7C 7F 1B 78 */	mr r31, r3
/* 8024AA68  7C 9E 23 78 */	mr r30, r4
/* 8024AA6C  7C BD 2B 78 */	mr r29, r5
/* 8024AA70  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024AA74  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024AA78  38 84 00 0B */	addi r4, r4, 0xb
/* 8024AA7C  4B FF FC 71 */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024AA80  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8024AA84  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8024AA88  7C 63 02 14 */	add r3, r3, r0
/* 8024AA8C  A3 C3 00 14 */	lhz r30, 0x14(r3)
/* 8024AA90  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024AA94  3C 03 00 01 */	addis r0, r3, 1
/* 8024AA98  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024AA9C  41 82 00 20 */	beq lbl_8024AABC
/* 8024AAA0  4B DD 4F 85 */	bl fopMsgM_SearchByID__FUi
/* 8024AAA4  38 00 00 0F */	li r0, 0xf
/* 8024AAA8  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 8024AAAC  7F C3 F3 78 */	mr r3, r30
/* 8024AAB0  38 80 03 E8 */	li r4, 0x3e8
/* 8024AAB4  4B DD 53 D1 */	bl fopMsgM_messageSet__FUlUl
/* 8024AAB8  48 00 00 50 */	b lbl_8024AB08
lbl_8024AABC:
/* 8024AABC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024AAC0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024AAC4  A0 03 00 A4 */	lhz r0, 0xa4(r3)
/* 8024AAC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024AACC  40 82 00 3C */	bne lbl_8024AB08
/* 8024AAD0  7F C3 F3 78 */	mr r3, r30
/* 8024AAD4  7F A4 EB 78 */	mr r4, r29
/* 8024AAD8  38 A0 03 E8 */	li r5, 0x3e8
/* 8024AADC  4B DD 52 59 */	bl fopMsgM_messageSet__FUlP10fopAc_ac_cUl
/* 8024AAE0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8024AAE4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024AAE8  3C 03 00 01 */	addis r0, r3, 1
/* 8024AAEC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024AAF0  40 82 00 0C */	bne lbl_8024AAFC
/* 8024AAF4  38 60 00 00 */	li r3, 0
/* 8024AAF8  48 00 00 20 */	b lbl_8024AB18
lbl_8024AAFC:
/* 8024AAFC  A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 8024AB00  7C 03 07 34 */	extsh r3, r0
/* 8024AB04  4B FE CF 85 */	bl setNowTalkFlowNo__12dMsgObject_cFs
lbl_8024AB08:
/* 8024AB08  93 DF 00 28 */	stw r30, 0x28(r31)
/* 8024AB0C  38 00 00 01 */	li r0, 1
/* 8024AB10  98 1F 00 41 */	stb r0, 0x41(r31)
/* 8024AB14  38 60 00 01 */	li r3, 1
lbl_8024AB18:
/* 8024AB18  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AB1C  48 11 77 0D */	bl _restgpr_29
/* 8024AB20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024AB24  7C 08 03 A6 */	mtlr r0
/* 8024AB28  38 21 00 20 */	addi r1, r1, 0x20
/* 8024AB2C  4E 80 00 20 */	blr 
