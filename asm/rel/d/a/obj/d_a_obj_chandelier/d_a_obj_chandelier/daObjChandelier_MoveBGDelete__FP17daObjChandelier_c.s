lbl_80BC8BDC:
/* 80BC8BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8BE0  7C 08 02 A6 */	mflr r0
/* 80BC8BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8BE8  4B 4A FC F5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BC8BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8BF0  7C 08 03 A6 */	mtlr r0
/* 80BC8BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8BF8  4E 80 00 20 */	blr 
