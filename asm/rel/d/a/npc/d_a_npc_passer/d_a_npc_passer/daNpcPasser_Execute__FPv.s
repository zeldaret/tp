lbl_80AA592C:
/* 80AA592C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5930  7C 08 02 A6 */	mflr r0
/* 80AA5934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5938  4B FF D6 9D */	bl execute__13daNpcPasser_cFv
/* 80AA593C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5940  7C 08 03 A6 */	mtlr r0
/* 80AA5944  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5948  4E 80 00 20 */	blr 
