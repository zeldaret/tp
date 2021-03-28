lbl_8026EBBC:
/* 8026EBBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026EBC0  7C 08 02 A6 */	mflr r0
/* 8026EBC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026EBC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026EBCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026EBD0  7C 9E 23 78 */	mr r30, r4
/* 8026EBD4  7C BF 2B 78 */	mr r31, r5
/* 8026EBD8  C0 24 00 08 */	lfs f1, 8(r4)
/* 8026EBDC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026EBE0  EC 61 00 32 */	fmuls f3, f1, f0
/* 8026EBE4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026EBE8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026EBEC  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026EBF0  C0 24 00 04 */	lfs f1, 4(r4)
/* 8026EBF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026EBF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026EBFC  EC 02 00 2A */	fadds f0, f2, f0
/* 8026EC00  EC 03 00 2A */	fadds f0, f3, f0
/* 8026EC04  FC 00 02 10 */	fabs f0, f0
/* 8026EC08  FC 20 00 18 */	frsp f1, f0
/* 8026EC0C  38 81 00 08 */	addi r4, r1, 8
/* 8026EC10  48 0D 84 C9 */	bl PSVECScale
/* 8026EC14  38 61 00 08 */	addi r3, r1, 8
/* 8026EC18  7F C4 F3 78 */	mr r4, r30
/* 8026EC1C  7F E5 FB 78 */	mr r5, r31
/* 8026EC20  48 0D 84 71 */	bl PSVECAdd
/* 8026EC24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026EC28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026EC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026EC30  7C 08 03 A6 */	mtlr r0
/* 8026EC34  38 21 00 20 */	addi r1, r1, 0x20
/* 8026EC38  4E 80 00 20 */	blr 
