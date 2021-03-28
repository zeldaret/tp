lbl_80C6182C:
/* 80C6182C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61830  7C 08 02 A6 */	mflr r0
/* 80C61834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61838  4B 41 70 A4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6183C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61840  7C 08 03 A6 */	mtlr r0
/* 80C61844  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61848  4E 80 00 20 */	blr 
