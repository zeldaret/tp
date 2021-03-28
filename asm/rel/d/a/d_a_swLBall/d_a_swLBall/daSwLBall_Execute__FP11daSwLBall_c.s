lbl_80D4F44C:
/* 80D4F44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F450  7C 08 02 A6 */	mflr r0
/* 80D4F454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F458  4B FF FB 09 */	bl execute__11daSwLBall_cFv
/* 80D4F45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F460  7C 08 03 A6 */	mtlr r0
/* 80D4F464  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F468  4E 80 00 20 */	blr 
