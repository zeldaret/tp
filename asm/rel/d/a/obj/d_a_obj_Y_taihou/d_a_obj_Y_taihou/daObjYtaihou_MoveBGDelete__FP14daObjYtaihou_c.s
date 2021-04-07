lbl_80BA0E90:
/* 80BA0E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0E94  7C 08 02 A6 */	mflr r0
/* 80BA0E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0E9C  4B 4D 7A 41 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BA0EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0EA4  7C 08 03 A6 */	mtlr r0
/* 80BA0EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0EAC  4E 80 00 20 */	blr 
