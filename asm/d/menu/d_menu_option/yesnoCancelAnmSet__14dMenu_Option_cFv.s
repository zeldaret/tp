lbl_801E8C38:
/* 801E8C38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E8C3C  7C 08 02 A6 */	mflr r0
/* 801E8C40  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E8C44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E8C48  7C 7F 1B 78 */	mr r31, r3
/* 801E8C4C  38 00 00 6E */	li r0, 0x6e
/* 801E8C50  90 01 00 08 */	stw r0, 8(r1)
/* 801E8C54  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E8C58  38 81 00 08 */	addi r4, r1, 8
/* 801E8C5C  38 A0 00 00 */	li r5, 0
/* 801E8C60  38 C0 00 00 */	li r6, 0
/* 801E8C64  38 E0 00 00 */	li r7, 0
/* 801E8C68  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E8C6C  FC 40 08 90 */	fmr f2, f1
/* 801E8C70  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E8C74  FC 80 18 90 */	fmr f4, f3
/* 801E8C78  39 00 00 00 */	li r8, 0
/* 801E8C7C  48 0C 2D 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E8C80  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E8C84  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E8C88  4B FA C6 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E8C8C  7F E3 FB 78 */	mr r3, r31
/* 801E8C90  38 80 04 7D */	li r4, 0x47d
/* 801E8C94  38 A0 04 73 */	li r5, 0x473
/* 801E8C98  4B FF F6 2D */	bl yesnoMenuMoveAnmInitSet__14dMenu_Option_cFii
/* 801E8C9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E8CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E8CA4  7C 08 03 A6 */	mtlr r0
/* 801E8CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 801E8CAC  4E 80 00 20 */	blr 
