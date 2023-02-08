lbl_80C62C34:
/* 80C62C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C62C38  7C 08 02 A6 */	mflr r0
/* 80C62C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C62C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C62C44  7C 7F 1B 78 */	mr r31, r3
/* 80C62C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62C50  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C62C54  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C62C58  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C62C5C  7C 05 07 74 */	extsb r5, r0
/* 80C62C60  4B 3D 27 01 */	bl isSwitch__10dSv_info_cCFii
/* 80C62C64  2C 03 00 00 */	cmpwi r3, 0
/* 80C62C68  41 82 00 68 */	beq lbl_80C62CD0
/* 80C62C6C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C62C70  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C62C74  28 04 00 FF */	cmplwi r4, 0xff
/* 80C62C78  41 82 00 18 */	beq lbl_80C62C90
/* 80C62C7C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C62C80  38 A0 00 FF */	li r5, 0xff
/* 80C62C84  38 C0 00 01 */	li r6, 1
/* 80C62C88  4B 3E 5C B9 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80C62C8C  48 00 00 44 */	b lbl_80C62CD0
lbl_80C62C90:
/* 80C62C90  3C 60 80 C6 */	lis r3, lit_3653@ha /* 0x80C63170@ha */
/* 80C62C94  C0 23 31 70 */	lfs f1, lit_3653@l(r3)  /* 0x80C63170@l */
/* 80C62C98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C62C9C  3C 60 80 C6 */	lis r3, lit_3740@ha /* 0x80C63180@ha */
/* 80C62CA0  C0 03 31 80 */	lfs f0, lit_3740@l(r3)  /* 0x80C63180@l */
/* 80C62CA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C62CA8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C62CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62CB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C62CB8  38 80 00 04 */	li r4, 4
/* 80C62CBC  38 A0 00 0F */	li r5, 0xf
/* 80C62CC0  38 C1 00 08 */	addi r6, r1, 8
/* 80C62CC4  4B 40 CE 4D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80C62CC8  7F E3 FB 78 */	mr r3, r31
/* 80C62CCC  48 00 00 19 */	bl mode_init_move__13daObjLv4Brg_cFv
lbl_80C62CD0:
/* 80C62CD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C62CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C62CD8  7C 08 03 A6 */	mtlr r0
/* 80C62CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C62CE0  4E 80 00 20 */	blr 
