lbl_80BF8F2C:
/* 80BF8F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8F30  7C 08 02 A6 */	mflr r0
/* 80BF8F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8F38  4B 47 F9 A5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BF8F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8F40  7C 08 03 A6 */	mtlr r0
/* 80BF8F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8F48  4E 80 00 20 */	blr 
