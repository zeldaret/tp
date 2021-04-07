lbl_80BCEE3C:
/* 80BCEE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEE40  7C 08 02 A6 */	mflr r0
/* 80BCEE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEE48  4B 4A 9A 95 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BCEE4C  38 60 00 01 */	li r3, 1
/* 80BCEE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEE54  7C 08 03 A6 */	mtlr r0
/* 80BCEE58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEE5C  4E 80 00 20 */	blr 
