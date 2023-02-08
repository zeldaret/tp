lbl_80C26D68:
/* 80C26D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26D6C  7C 08 02 A6 */	mflr r0
/* 80C26D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26D74  4B 45 1B DD */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C26D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26D7C  7C 08 03 A6 */	mtlr r0
/* 80C26D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26D84  4E 80 00 20 */	blr 
