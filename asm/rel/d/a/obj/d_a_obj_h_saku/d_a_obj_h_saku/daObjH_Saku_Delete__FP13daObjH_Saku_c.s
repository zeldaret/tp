lbl_80C15FA0:
/* 80C15FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C15FA4  7C 08 02 A6 */	mflr r0
/* 80C15FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15FAC  4B 46 29 31 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C15FB0  38 60 00 01 */	li r3, 1
/* 80C15FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15FB8  7C 08 03 A6 */	mtlr r0
/* 80C15FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15FC0  4E 80 00 20 */	blr 
