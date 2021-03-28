lbl_80C59BF4:
/* 80C59BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59BF8  7C 08 02 A6 */	mflr r0
/* 80C59BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59C00  4B 41 EC DC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C59C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59C08  7C 08 03 A6 */	mtlr r0
/* 80C59C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59C10  4E 80 00 20 */	blr 
