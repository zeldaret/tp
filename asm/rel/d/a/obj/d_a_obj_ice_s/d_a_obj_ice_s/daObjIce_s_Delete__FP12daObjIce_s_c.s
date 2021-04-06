lbl_80C21288:
/* 80C21288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2128C  7C 08 02 A6 */	mflr r0
/* 80C21290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21294  4B 45 76 49 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C21298  38 60 00 01 */	li r3, 1
/* 80C2129C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C212A0  7C 08 03 A6 */	mtlr r0
/* 80C212A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C212A8  4E 80 00 20 */	blr 
