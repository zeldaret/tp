lbl_80CFCF20:
/* 80CFCF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCF24  7C 08 02 A6 */	mflr r0
/* 80CFCF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCF2C  4B 37 B9 B0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CFCF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCF34  7C 08 03 A6 */	mtlr r0
/* 80CFCF38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCF3C  4E 80 00 20 */	blr 
