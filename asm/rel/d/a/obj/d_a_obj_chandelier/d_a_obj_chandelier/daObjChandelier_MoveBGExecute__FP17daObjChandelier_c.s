lbl_80BC8BFC:
/* 80BC8BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8C00  7C 08 02 A6 */	mflr r0
/* 80BC8C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8C08  4B 4A FD 49 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC8C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8C10  7C 08 03 A6 */	mtlr r0
/* 80BC8C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8C18  4E 80 00 20 */	blr 
