lbl_80BCCB6C:
/* 80BCCB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCB70  7C 08 02 A6 */	mflr r0
/* 80BCCB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCB78  4B 4A BD 65 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BCCB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCB80  7C 08 03 A6 */	mtlr r0
/* 80BCCB84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCB88  4E 80 00 20 */	blr 
