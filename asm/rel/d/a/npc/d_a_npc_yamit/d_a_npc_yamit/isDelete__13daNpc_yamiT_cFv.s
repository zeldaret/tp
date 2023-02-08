lbl_80B4A69C:
/* 80B4A69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A6A0  7C 08 02 A6 */	mflr r0
/* 80B4A6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A6AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4A6B0  7C 7E 1B 78 */	mr r30, r3
/* 80B4A6B4  3B E0 00 00 */	li r31, 0
/* 80B4A6B8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B4A6BC  2C 00 00 02 */	cmpwi r0, 2
/* 80B4A6C0  40 80 00 48 */	bge lbl_80B4A708
/* 80B4A6C4  2C 00 00 00 */	cmpwi r0, 0
/* 80B4A6C8  40 80 00 08 */	bge lbl_80B4A6D0
/* 80B4A6CC  48 00 00 3C */	b lbl_80B4A708
lbl_80B4A6D0:
/* 80B4A6D0  38 60 02 3A */	li r3, 0x23a
/* 80B4A6D4  4B 60 23 D9 */	bl daNpcT_chkEvtBit__FUl
/* 80B4A6D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4A6DC  40 82 00 2C */	bne lbl_80B4A708
/* 80B4A6E0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B4A6E4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B4A6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4A6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4A6F0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B4A6F4  7C 05 07 74 */	extsb r5, r0
/* 80B4A6F8  4B 4E AC 69 */	bl isSwitch__10dSv_info_cCFii
/* 80B4A6FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4A700  40 82 00 08 */	bne lbl_80B4A708
/* 80B4A704  3B E0 00 01 */	li r31, 1
lbl_80B4A708:
/* 80B4A708  7F E3 FB 78 */	mr r3, r31
/* 80B4A70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A710  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4A714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A718  7C 08 03 A6 */	mtlr r0
/* 80B4A71C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A720  4E 80 00 20 */	blr 
