lbl_80CEEE3C:
/* 80CEEE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEEE40  7C 08 02 A6 */	mflr r0
/* 80CEEE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEEE48  4B 38 9A 95 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CEEE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEE50  7C 08 03 A6 */	mtlr r0
/* 80CEEE54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEE58  4E 80 00 20 */	blr 
