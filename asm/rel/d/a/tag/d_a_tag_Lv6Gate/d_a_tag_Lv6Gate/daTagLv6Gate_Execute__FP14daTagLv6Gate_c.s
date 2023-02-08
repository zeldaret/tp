lbl_80D4FEBC:
/* 80D4FEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4FEC0  7C 08 02 A6 */	mflr r0
/* 80D4FEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4FEC8  48 00 00 15 */	bl execute__14daTagLv6Gate_cFv
/* 80D4FECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4FED0  7C 08 03 A6 */	mtlr r0
/* 80D4FED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4FED8  4E 80 00 20 */	blr 
