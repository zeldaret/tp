lbl_80C5B10C:
/* 80C5B10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B110  7C 08 02 A6 */	mflr r0
/* 80C5B114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B118  4B 41 D7 C5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5B11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B120  7C 08 03 A6 */	mtlr r0
/* 80C5B124  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B128  4E 80 00 20 */	blr 
