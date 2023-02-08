lbl_801C0C10:
/* 801C0C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0C14  7C 08 02 A6 */	mflr r0
/* 801C0C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0C1C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 801C0C20  C0 02 A6 94 */	lfs f0, lit_3837(r2)
/* 801C0C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C0C28  40 81 00 0C */	ble lbl_801C0C34
/* 801C0C2C  4B FF FF 1D */	bl getLineWidthZoomBig__15renderingDmap_cFi
/* 801C0C30  48 00 00 08 */	b lbl_801C0C38
lbl_801C0C34:
/* 801C0C34  4B FF FF 79 */	bl getLineWidthZoomSmall__15renderingDmap_cFi
lbl_801C0C38:
/* 801C0C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0C3C  7C 08 03 A6 */	mtlr r0
/* 801C0C40  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0C44  4E 80 00 20 */	blr 
