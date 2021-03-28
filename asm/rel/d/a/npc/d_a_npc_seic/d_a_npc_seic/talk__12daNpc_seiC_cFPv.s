lbl_80AC8364:
/* 80AC8364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8368  7C 08 02 A6 */	mflr r0
/* 80AC836C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8374  7C 7F 1B 78 */	mr r31, r3
/* 80AC8378  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AC837C  2C 00 00 02 */	cmpwi r0, 2
/* 80AC8380  41 82 00 34 */	beq lbl_80AC83B4
/* 80AC8384  40 80 00 68 */	bge lbl_80AC83EC
/* 80AC8388  2C 00 00 00 */	cmpwi r0, 0
/* 80AC838C  40 80 00 0C */	bge lbl_80AC8398
/* 80AC8390  48 00 00 5C */	b lbl_80AC83EC
/* 80AC8394  48 00 00 58 */	b lbl_80AC83EC
lbl_80AC8398:
/* 80AC8398  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AC839C  38 A0 00 00 */	li r5, 0
/* 80AC83A0  4B 68 38 50 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AC83A4  38 00 00 00 */	li r0, 0
/* 80AC83A8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC83AC  38 00 00 02 */	li r0, 2
/* 80AC83B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC83B4:
/* 80AC83B4  7F E3 FB 78 */	mr r3, r31
/* 80AC83B8  38 80 00 00 */	li r4, 0
/* 80AC83BC  38 A0 00 00 */	li r5, 0
/* 80AC83C0  38 C0 00 00 */	li r6, 0
/* 80AC83C4  38 E0 00 00 */	li r7, 0
/* 80AC83C8  4B 68 38 B0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AC83CC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC83D0  41 82 00 1C */	beq lbl_80AC83EC
/* 80AC83D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC83D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC83DC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AC83E0  4B 57 A0 88 */	b reset__14dEvt_control_cFv
/* 80AC83E4  38 00 00 03 */	li r0, 3
/* 80AC83E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC83EC:
/* 80AC83EC  38 60 00 00 */	li r3, 0
/* 80AC83F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC83F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC83F8  7C 08 03 A6 */	mtlr r0
/* 80AC83FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8400  4E 80 00 20 */	blr 
