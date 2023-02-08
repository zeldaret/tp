lbl_80C4F540:
/* 80C4F540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F544  7C 08 02 A6 */	mflr r0
/* 80C4F548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F54C  4B 42 93 91 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C4F550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F554  7C 08 03 A6 */	mtlr r0
/* 80C4F558  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F55C  4E 80 00 20 */	blr 
