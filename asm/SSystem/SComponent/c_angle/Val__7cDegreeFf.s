lbl_802713BC:
/* 802713BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802713C0  7C 08 02 A6 */	mflr r0
/* 802713C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802713C8  D0 23 00 00 */	stfs f1, 0(r3)
/* 802713CC  4B FF FF B1 */	bl Formal__7cDegreeFv
/* 802713D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802713D4  7C 08 03 A6 */	mtlr r0
/* 802713D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802713DC  4E 80 00 20 */	blr 
