lbl_8059C370:
/* 8059C370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C374  7C 08 02 A6 */	mflr r0
/* 8059C378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C380  7C 7F 1B 78 */	mr r31, r3
/* 8059C384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059C388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059C38C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059C390  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8059C394  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8059C398  7C 05 07 74 */	extsb r5, r0
/* 8059C39C  4B A9 8F C5 */	bl isSwitch__10dSv_info_cCFii
/* 8059C3A0  2C 03 00 00 */	cmpwi r3, 0
/* 8059C3A4  40 82 00 0C */	bne lbl_8059C3B0
/* 8059C3A8  7F E3 FB 78 */	mr r3, r31
/* 8059C3AC  48 00 00 19 */	bl modeUpperInit__10daObjSw5_cFv
lbl_8059C3B0:
/* 8059C3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C3B8  7C 08 03 A6 */	mtlr r0
/* 8059C3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C3C0  4E 80 00 20 */	blr 
