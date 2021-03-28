lbl_801F4238:
/* 801F4238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F423C  7C 08 02 A6 */	mflr r0
/* 801F4240  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F4248  7C 7F 1B 78 */	mr r31, r3
/* 801F424C  88 03 01 B6 */	lbz r0, 0x1b6(r3)
/* 801F4250  28 00 00 00 */	cmplwi r0, 0
/* 801F4254  41 82 00 90 */	beq lbl_801F42E4
/* 801F4258  38 00 00 6D */	li r0, 0x6d
/* 801F425C  90 01 00 08 */	stw r0, 8(r1)
/* 801F4260  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4264  38 81 00 08 */	addi r4, r1, 8
/* 801F4268  38 A0 00 00 */	li r5, 0
/* 801F426C  38 C0 00 00 */	li r6, 0
/* 801F4270  38 E0 00 00 */	li r7, 0
/* 801F4274  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4278  FC 40 08 90 */	fmr f2, f1
/* 801F427C  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F4280  FC 80 18 90 */	fmr f4, f3
/* 801F4284  39 00 00 00 */	li r8, 0
/* 801F4288  48 0B 76 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F428C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F4290  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F4294  4B FA 10 0D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F4298  7F E3 FB 78 */	mr r3, r31
/* 801F429C  38 80 08 33 */	li r4, 0x833
/* 801F42A0  38 A0 08 29 */	li r5, 0x829
/* 801F42A4  38 C0 00 00 */	li r6, 0
/* 801F42A8  48 00 14 9D */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F42AC  7F E3 FB 78 */	mr r3, r31
/* 801F42B0  38 80 00 3A */	li r4, 0x3a
/* 801F42B4  48 00 05 A9 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F42B8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F42BC  4B F9 DD FD */	bl openInit__15dFile_warning_cFv
/* 801F42C0  7F E3 FB 78 */	mr r3, r31
/* 801F42C4  38 80 00 00 */	li r4, 0
/* 801F42C8  48 00 1F 35 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F42CC  7F E3 FB 78 */	mr r3, r31
/* 801F42D0  38 80 00 00 */	li r4, 0
/* 801F42D4  48 00 1D D1 */	bl modoruTxtDispAnmInit__12dMenu_save_cFUc
/* 801F42D8  38 00 00 37 */	li r0, 0x37
/* 801F42DC  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F42E0  48 00 00 08 */	b lbl_801F42E8
lbl_801F42E4:
/* 801F42E4  48 00 04 41 */	bl yesnoCancelAnmSet__12dMenu_save_cFv
lbl_801F42E8:
/* 801F42E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F42EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F42F0  7C 08 03 A6 */	mtlr r0
/* 801F42F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F42F8  4E 80 00 20 */	blr 
