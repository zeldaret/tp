lbl_809476A0:
/* 809476A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809476A4  7C 08 02 A6 */	mflr r0
/* 809476A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809476AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809476B0  7C 7F 1B 78 */	mr r31, r3
/* 809476B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809476B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809476BC  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 809476C0  A8 04 01 7C */	lha r0, 0x17c(r4)
/* 809476C4  A8 84 01 7A */	lha r4, 0x17a(r4)
/* 809476C8  7C 00 20 00 */	cmpw r0, r4
/* 809476CC  40 82 00 14 */	bne lbl_809476E0
/* 809476D0  48 00 25 3D */	bl getFlowNodeNum__8daMyna_cFv
/* 809476D4  38 03 00 06 */	addi r0, r3, 6
/* 809476D8  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 809476DC  48 00 00 24 */	b lbl_80947700
lbl_809476E0:
/* 809476E0  40 81 00 14 */	ble lbl_809476F4
/* 809476E4  48 00 25 29 */	bl getFlowNodeNum__8daMyna_cFv
/* 809476E8  38 03 00 07 */	addi r0, r3, 7
/* 809476EC  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 809476F0  48 00 00 10 */	b lbl_80947700
lbl_809476F4:
/* 809476F4  48 00 25 19 */	bl getFlowNodeNum__8daMyna_cFv
/* 809476F8  38 03 00 08 */	addi r0, r3, 8
/* 809476FC  B0 1F 09 1C */	sth r0, 0x91c(r31)
lbl_80947700:
/* 80947700  38 7F 06 20 */	addi r3, r31, 0x620
/* 80947704  7F E4 FB 78 */	mr r4, r31
/* 80947708  A0 BF 09 1C */	lhz r5, 0x91c(r31)
/* 8094770C  38 C0 00 00 */	li r6, 0
/* 80947710  38 E0 00 00 */	li r7, 0
/* 80947714  4B 90 28 7D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80947718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094771C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947720  7C 08 03 A6 */	mtlr r0
/* 80947724  38 21 00 10 */	addi r1, r1, 0x10
/* 80947728  4E 80 00 20 */	blr 
