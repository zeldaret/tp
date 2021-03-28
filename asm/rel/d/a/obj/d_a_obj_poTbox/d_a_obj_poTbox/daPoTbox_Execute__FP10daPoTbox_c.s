lbl_80CB4EB4:
/* 80CB4EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4EB8  7C 08 02 A6 */	mflr r0
/* 80CB4EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4EC0  4B 3C 3A 90 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CB4EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4EC8  7C 08 03 A6 */	mtlr r0
/* 80CB4ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4ED0  4E 80 00 20 */	blr 
