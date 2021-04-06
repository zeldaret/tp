lbl_80BC68F0:
/* 80BC68F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC68F4  7C 08 02 A6 */	mflr r0
/* 80BC68F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC68FC  4B 4B 1F E1 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BC6900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6904  7C 08 03 A6 */	mtlr r0
/* 80BC6908  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC690C  4E 80 00 20 */	blr 
