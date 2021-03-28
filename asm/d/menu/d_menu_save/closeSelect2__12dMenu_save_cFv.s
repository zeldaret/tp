lbl_801F1BF8:
/* 801F1BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1BFC  7C 08 02 A6 */	mflr r0
/* 801F1C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1C04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1C08  7C 7F 1B 78 */	mr r31, r3
/* 801F1C0C  38 00 00 6D */	li r0, 0x6d
/* 801F1C10  90 01 00 08 */	stw r0, 8(r1)
/* 801F1C14  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F1C18  38 81 00 08 */	addi r4, r1, 8
/* 801F1C1C  38 A0 00 00 */	li r5, 0
/* 801F1C20  38 C0 00 00 */	li r6, 0
/* 801F1C24  38 E0 00 00 */	li r7, 0
/* 801F1C28  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F1C2C  FC 40 08 90 */	fmr f2, f1
/* 801F1C30  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F1C34  FC 80 18 90 */	fmr f4, f3
/* 801F1C38  39 00 00 00 */	li r8, 0
/* 801F1C3C  48 0B 9D 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F1C40  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F1C44  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F1C48  4B FA 36 59 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F1C4C  38 00 00 01 */	li r0, 1
/* 801F1C50  98 1F 21 A2 */	stb r0, 0x21a2(r31)
/* 801F1C54  38 00 00 07 */	li r0, 7
/* 801F1C58  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1C5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F1C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1C64  7C 08 03 A6 */	mtlr r0
/* 801F1C68  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1C6C  4E 80 00 20 */	blr 
