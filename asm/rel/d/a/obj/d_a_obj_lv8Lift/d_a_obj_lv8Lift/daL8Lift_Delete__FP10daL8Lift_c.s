lbl_80C89E64:
/* 80C89E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89E68  7C 08 02 A6 */	mflr r0
/* 80C89E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89E70  4B 3E EA 6D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C89E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89E78  7C 08 03 A6 */	mtlr r0
/* 80C89E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89E80  4E 80 00 20 */	blr 
