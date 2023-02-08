lbl_801E89F8:
/* 801E89F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E89FC  7C 08 02 A6 */	mflr r0
/* 801E8A00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E8A04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E8A08  7C 7F 1B 78 */	mr r31, r3
/* 801E8A0C  88 03 03 F9 */	lbz r0, 0x3f9(r3)
/* 801E8A10  28 00 00 00 */	cmplwi r0, 0
/* 801E8A14  41 82 00 9C */	beq lbl_801E8AB0
/* 801E8A18  88 1F 03 F7 */	lbz r0, 0x3f7(r31)
/* 801E8A1C  28 00 00 01 */	cmplwi r0, 1
/* 801E8A20  40 82 00 3C */	bne lbl_801E8A5C
/* 801E8A24  38 00 00 B3 */	li r0, 0xb3
/* 801E8A28  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E8A2C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E8A30  38 81 00 0C */	addi r4, r1, 0xc
/* 801E8A34  38 A0 00 00 */	li r5, 0
/* 801E8A38  38 C0 00 00 */	li r6, 0
/* 801E8A3C  38 E0 00 00 */	li r7, 0
/* 801E8A40  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E8A44  FC 40 08 90 */	fmr f2, f1
/* 801E8A48  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E8A4C  FC 80 18 90 */	fmr f4, f3
/* 801E8A50  39 00 00 00 */	li r8, 0
/* 801E8A54  48 0C 2F 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E8A58  48 00 00 38 */	b lbl_801E8A90
lbl_801E8A5C:
/* 801E8A5C  38 00 00 A2 */	li r0, 0xa2
/* 801E8A60  90 01 00 08 */	stw r0, 8(r1)
/* 801E8A64  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E8A68  38 81 00 08 */	addi r4, r1, 8
/* 801E8A6C  38 A0 00 00 */	li r5, 0
/* 801E8A70  38 C0 00 00 */	li r6, 0
/* 801E8A74  38 E0 00 00 */	li r7, 0
/* 801E8A78  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E8A7C  FC 40 08 90 */	fmr f2, f1
/* 801E8A80  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E8A84  FC 80 18 90 */	fmr f4, f3
/* 801E8A88  39 00 00 00 */	li r8, 0
/* 801E8A8C  48 0C 2E F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801E8A90:
/* 801E8A90  7F E3 FB 78 */	mr r3, r31
/* 801E8A94  38 80 04 7D */	li r4, 0x47d
/* 801E8A98  38 A0 04 73 */	li r5, 0x473
/* 801E8A9C  4B FF F8 29 */	bl yesnoMenuMoveAnmInitSet__14dMenu_Option_cFii
/* 801E8AA0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E8AA4  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E8AA8  4B FA C7 F9 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E8AAC  48 00 00 08 */	b lbl_801E8AB4
lbl_801E8AB0:
/* 801E8AB0  48 00 01 89 */	bl yesnoCancelAnmSet__14dMenu_Option_cFv
lbl_801E8AB4:
/* 801E8AB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E8AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E8ABC  7C 08 03 A6 */	mtlr r0
/* 801E8AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 801E8AC4  4E 80 00 20 */	blr 
