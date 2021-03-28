lbl_80C46EE0:
/* 80C46EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46EE4  7C 08 02 A6 */	mflr r0
/* 80C46EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46EEC  4B 43 19 F0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C46EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46EF4  7C 08 03 A6 */	mtlr r0
/* 80C46EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46EFC  4E 80 00 20 */	blr 
