lbl_80BC9F04:
/* 80BC9F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9F08  7C 08 02 A6 */	mflr r0
/* 80BC9F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9F10  4B 4A EA 40 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC9F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9F18  7C 08 03 A6 */	mtlr r0
/* 80BC9F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9F20  4E 80 00 20 */	blr 
