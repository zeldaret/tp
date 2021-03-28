lbl_80BCCB4C:
/* 80BCCB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCB50  7C 08 02 A6 */	mflr r0
/* 80BCCB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCB58  4B 4A BD F8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BCCB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCB60  7C 08 03 A6 */	mtlr r0
/* 80BCCB64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCB68  4E 80 00 20 */	blr 
