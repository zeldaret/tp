lbl_8045C764:
/* 8045C764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C768  7C 08 02 A6 */	mflr r0
/* 8045C76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C770  4B C1 C1 E0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 8045C774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C778  7C 08 03 A6 */	mtlr r0
/* 8045C77C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C780  4E 80 00 20 */	blr 
