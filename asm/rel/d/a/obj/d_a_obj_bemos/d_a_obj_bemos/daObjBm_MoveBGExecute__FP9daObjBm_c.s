lbl_80BB33FC:
/* 80BB33FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3400  7C 08 02 A6 */	mflr r0
/* 80BB3404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3408  4B 4C 55 48 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BB340C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3410  7C 08 03 A6 */	mtlr r0
/* 80BB3414  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3418  4E 80 00 20 */	blr 
