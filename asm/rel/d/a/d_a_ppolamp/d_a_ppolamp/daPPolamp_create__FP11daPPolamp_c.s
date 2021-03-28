lbl_80D4D140:
/* 80D4D140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D144  7C 08 02 A6 */	mflr r0
/* 80D4D148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D150  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4D154  7C 7F 1B 78 */	mr r31, r3
/* 80D4D158  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4D15C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4D160  40 82 00 4C */	bne lbl_80D4D1AC
/* 80D4D164  7F E0 FB 79 */	or. r0, r31, r31
/* 80D4D168  41 82 00 38 */	beq lbl_80D4D1A0
/* 80D4D16C  7C 1E 03 78 */	mr r30, r0
/* 80D4D170  4B 2C B9 F4 */	b __ct__10fopAc_ac_cFv
/* 80D4D174  3C 60 80 D5 */	lis r3, __vt__11daPPolamp_c@ha
/* 80D4D178  38 03 D3 30 */	addi r0, r3, __vt__11daPPolamp_c@l
/* 80D4D17C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D4D180  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4D184  38 03 D3 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4D188  94 1E 05 7C */	stwu r0, 0x57c(r30)
/* 80D4D18C  7F C3 F3 78 */	mr r3, r30
/* 80D4D190  38 80 00 00 */	li r4, 0
/* 80D4D194  4B 5D B2 68 */	b init__12J3DFrameCtrlFs
/* 80D4D198  38 00 00 00 */	li r0, 0
/* 80D4D19C  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80D4D1A0:
/* 80D4D1A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4D1A4  60 00 00 08 */	ori r0, r0, 8
/* 80D4D1A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4D1AC:
/* 80D4D1AC  7F E3 FB 78 */	mr r3, r31
/* 80D4D1B0  4B FF F8 4D */	bl create__11daPPolamp_cFv
/* 80D4D1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D1B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4D1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D1C0  7C 08 03 A6 */	mtlr r0
/* 80D4D1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D1C8  4E 80 00 20 */	blr 
