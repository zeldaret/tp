lbl_80C6E754:
/* 80C6E754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E758  7C 08 02 A6 */	mflr r0
/* 80C6E75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E760  4B 40 A1 7D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6E764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E768  7C 08 03 A6 */	mtlr r0
/* 80C6E76C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E770  4E 80 00 20 */	blr 
