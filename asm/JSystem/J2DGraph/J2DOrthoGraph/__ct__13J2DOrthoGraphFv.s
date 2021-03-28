lbl_802E9670:
/* 802E9670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9674  7C 08 02 A6 */	mflr r0
/* 802E9678  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E967C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E9680  7C 7F 1B 78 */	mr r31, r3
/* 802E9684  C0 22 C7 60 */	lfs f1, lit_522(r2)
/* 802E9688  FC 40 08 90 */	fmr f2, f1
/* 802E968C  FC 60 08 90 */	fmr f3, f1
/* 802E9690  FC 80 08 90 */	fmr f4, f1
/* 802E9694  4B FF F4 75 */	bl __ct__14J2DGrafContextFffff
/* 802E9698  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E969C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E96A0  90 1F 00 00 */	stw r0, 0(r31)
/* 802E96A4  7F E3 FB 78 */	mr r3, r31
/* 802E96A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E96AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E96B0  7D 89 03 A6 */	mtctr r12
/* 802E96B4  4E 80 04 21 */	bctrl 
/* 802E96B8  7F E3 FB 78 */	mr r3, r31
/* 802E96BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E96C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E96C4  7C 08 03 A6 */	mtlr r0
/* 802E96C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E96CC  4E 80 00 20 */	blr 
