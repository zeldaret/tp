lbl_80AA0278:
/* 80AA0278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA027C  7C 08 02 A6 */	mflr r0
/* 80AA0280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0284  4B FF C9 55 */	bl Delete__18daNpc_Pachi_Taro_cFv
/* 80AA0288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA028C  7C 08 03 A6 */	mtlr r0
/* 80AA0290  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0294  4E 80 00 20 */	blr 
