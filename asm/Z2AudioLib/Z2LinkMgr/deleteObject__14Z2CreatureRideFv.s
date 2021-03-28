lbl_802C51EC:
/* 802C51EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C51F0  7C 08 02 A6 */	mflr r0
/* 802C51F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C51F8  4B FF B2 F1 */	bl deleteObject__10Z2CreatureFv
/* 802C51FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5200  7C 08 03 A6 */	mtlr r0
/* 802C5204  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5208  4E 80 00 20 */	blr 
