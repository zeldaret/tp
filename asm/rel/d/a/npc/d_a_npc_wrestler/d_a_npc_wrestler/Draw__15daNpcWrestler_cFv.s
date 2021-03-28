lbl_80B2FE1C:
/* 80B2FE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FE20  7C 08 02 A6 */	mflr r0
/* 80B2FE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FE28  88 03 0E 9C */	lbz r0, 0xe9c(r3)
/* 80B2FE2C  28 00 00 00 */	cmplwi r0, 0
/* 80B2FE30  41 82 00 0C */	beq lbl_80B2FE3C
/* 80B2FE34  38 60 00 00 */	li r3, 0
/* 80B2FE38  48 00 00 3C */	b lbl_80B2FE74
lbl_80B2FE3C:
/* 80B2FE3C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80B2FE40  80 84 00 04 */	lwz r4, 4(r4)
/* 80B2FE44  80 84 00 04 */	lwz r4, 4(r4)
/* 80B2FE48  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80B2FE4C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B2FE50  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80B2FE54  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80B2FE58  38 80 00 00 */	li r4, 0
/* 80B2FE5C  38 A0 00 00 */	li r5, 0
/* 80B2FE60  80 C3 0B DC */	lwz r6, 0xbdc(r3)
/* 80B2FE64  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80B2FE68  38 C0 00 00 */	li r6, 0
/* 80B2FE6C  38 E0 00 00 */	li r7, 0
/* 80B2FE70  4B 62 24 3C */	b draw__8daNpcF_cFiifP11_GXColorS10i
lbl_80B2FE74:
/* 80B2FE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FE78  7C 08 03 A6 */	mtlr r0
/* 80B2FE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FE80  4E 80 00 20 */	blr 
