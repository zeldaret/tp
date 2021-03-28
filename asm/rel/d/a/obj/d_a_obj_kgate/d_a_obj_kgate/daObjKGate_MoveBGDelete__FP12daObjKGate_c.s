lbl_8058AA58:
/* 8058AA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AA5C  7C 08 02 A6 */	mflr r0
/* 8058AA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AA64  4B AE DE 78 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 8058AA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AA6C  7C 08 03 A6 */	mtlr r0
/* 8058AA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AA74  4E 80 00 20 */	blr 
