lbl_802FDBFC:
/* 802FDBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDC00  7C 08 02 A6 */	mflr r0
/* 802FDC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDC08  80 03 01 00 */	lwz r0, 0x100(r3)
/* 802FDC0C  28 00 00 00 */	cmplwi r0, 0
/* 802FDC10  41 82 00 50 */	beq lbl_802FDC60
/* 802FDC14  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FDC18  28 00 00 00 */	cmplwi r0, 0
/* 802FDC1C  41 82 00 44 */	beq lbl_802FDC60
/* 802FDC20  A8 03 01 18 */	lha r0, 0x118(r3)
/* 802FDC24  90 01 00 08 */	stw r0, 8(r1)
/* 802FDC28  90 81 00 0C */	stw r4, 0xc(r1)
/* 802FDC2C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802FDC30  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 802FDC34  A8 83 01 0A */	lha r4, 0x10a(r3)
/* 802FDC38  A8 A3 01 0C */	lha r5, 0x10c(r3)
/* 802FDC3C  A8 C3 01 0E */	lha r6, 0x10e(r3)
/* 802FDC40  A8 E3 01 10 */	lha r7, 0x110(r3)
/* 802FDC44  A9 03 01 12 */	lha r8, 0x112(r3)
/* 802FDC48  A9 23 01 14 */	lha r9, 0x114(r3)
/* 802FDC4C  A9 43 01 16 */	lha r10, 0x116(r3)
/* 802FDC50  81 83 00 00 */	lwz r12, 0(r3)
/* 802FDC54  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 802FDC58  7D 89 03 A6 */	mtctr r12
/* 802FDC5C  4E 80 04 21 */	bctrl 
lbl_802FDC60:
/* 802FDC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDC64  7C 08 03 A6 */	mtlr r0
/* 802FDC68  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDC6C  4E 80 00 20 */	blr 
