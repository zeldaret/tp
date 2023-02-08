lbl_801D5334:
/* 801D5334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D5338  7C 08 02 A6 */	mflr r0
/* 801D533C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D5340  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D5344  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801D5348  7C 7F 1B 78 */	mr r31, r3
/* 801D534C  FF E0 08 90 */	fmr f31, f1
/* 801D5350  D3 E3 0F C4 */	stfs f31, 0xfc4(r3)
/* 801D5354  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801D5358  41 82 00 0C */	beq lbl_801D5364
/* 801D535C  80 7F 0C A0 */	lwz r3, 0xca0(r31)
/* 801D5360  48 08 0A 71 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
lbl_801D5364:
/* 801D5364  80 7F 0C A0 */	lwz r3, 0xca0(r31)
/* 801D5368  FC 20 F8 90 */	fmr f1, f31
/* 801D536C  48 08 0A BD */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801D5370  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D5374  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801D5378  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D537C  7C 08 03 A6 */	mtlr r0
/* 801D5380  38 21 00 20 */	addi r1, r1, 0x20
/* 801D5384  4E 80 00 20 */	blr 
