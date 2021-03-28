lbl_80CAAAAC:
/* 80CAAAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAAB0  7C 08 02 A6 */	mflr r0
/* 80CAAAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAAB8  4B 3C DE 24 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CAAABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAAC0  7C 08 03 A6 */	mtlr r0
/* 80CAAAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAAC8  4E 80 00 20 */	blr 
