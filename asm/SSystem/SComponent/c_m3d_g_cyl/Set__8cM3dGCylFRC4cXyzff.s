lbl_8026F180:
/* 8026F180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F184  7C 08 02 A6 */	mflr r0
/* 8026F188  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F18C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8026F190  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8026F194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F198  7C 7F 1B 78 */	mr r31, r3
/* 8026F19C  FF C0 08 90 */	fmr f30, f1
/* 8026F1A0  FF E0 10 90 */	fmr f31, f2
/* 8026F1A4  48 00 00 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8026F1A8  7F E3 FB 78 */	mr r3, r31
/* 8026F1AC  FC 20 F0 90 */	fmr f1, f30
/* 8026F1B0  48 00 00 51 */	bl SetR__8cM3dGCylFf
/* 8026F1B4  7F E3 FB 78 */	mr r3, r31
/* 8026F1B8  FC 20 F8 90 */	fmr f1, f31
/* 8026F1BC  48 00 00 3D */	bl SetH__8cM3dGCylFf
/* 8026F1C0  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8026F1C4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8026F1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F1CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F1D0  7C 08 03 A6 */	mtlr r0
/* 8026F1D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F1D8  4E 80 00 20 */	blr 
