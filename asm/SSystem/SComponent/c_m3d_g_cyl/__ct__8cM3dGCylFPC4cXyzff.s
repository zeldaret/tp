lbl_8026F0A8:
/* 8026F0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F0AC  7C 08 02 A6 */	mflr r0
/* 8026F0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F0B4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8026F0B8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8026F0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F0C0  7C 7F 1B 78 */	mr r31, r3
/* 8026F0C4  FF C0 08 90 */	fmr f30, f1
/* 8026F0C8  FF E0 10 90 */	fmr f31, f2
/* 8026F0CC  3C A0 80 3A */	lis r5, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 8026F0D0  38 05 72 0C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 8026F0D4  90 03 00 14 */	stw r0, 0x14(r3)
/* 8026F0D8  48 00 01 05 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8026F0DC  7F E3 FB 78 */	mr r3, r31
/* 8026F0E0  FC 20 F0 90 */	fmr f1, f30
/* 8026F0E4  48 00 01 1D */	bl SetR__8cM3dGCylFf
/* 8026F0E8  7F E3 FB 78 */	mr r3, r31
/* 8026F0EC  FC 20 F8 90 */	fmr f1, f31
/* 8026F0F0  48 00 01 09 */	bl SetH__8cM3dGCylFf
/* 8026F0F4  7F E3 FB 78 */	mr r3, r31
/* 8026F0F8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8026F0FC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8026F100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F108  7C 08 03 A6 */	mtlr r0
/* 8026F10C  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F110  4E 80 00 20 */	blr 
