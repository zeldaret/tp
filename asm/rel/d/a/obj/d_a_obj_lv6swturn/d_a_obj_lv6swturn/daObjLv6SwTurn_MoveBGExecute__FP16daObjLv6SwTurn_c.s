lbl_80C84650:
/* 80C84650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84654  7C 08 02 A6 */	mflr r0
/* 80C84658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8465C  4B 3F 42 F4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C84660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84664  7C 08 03 A6 */	mtlr r0
/* 80C84668  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8466C  4E 80 00 20 */	blr 
