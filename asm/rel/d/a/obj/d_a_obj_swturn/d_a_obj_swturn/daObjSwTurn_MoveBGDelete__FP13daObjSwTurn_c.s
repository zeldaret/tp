lbl_80D01FF8:
/* 80D01FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D01FFC  7C 08 02 A6 */	mflr r0
/* 80D02000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02004  4B 37 68 D8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D02008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0200C  7C 08 03 A6 */	mtlr r0
/* 80D02010  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02014  4E 80 00 20 */	blr 
