lbl_80D4D254:
/* 80D4D254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D258  7C 08 02 A6 */	mflr r0
/* 80D4D25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D260  4B FF F9 25 */	bl draw__11daPPolamp_cFv
/* 80D4D264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D268  7C 08 03 A6 */	mtlr r0
/* 80D4D26C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D270  4E 80 00 20 */	blr 
