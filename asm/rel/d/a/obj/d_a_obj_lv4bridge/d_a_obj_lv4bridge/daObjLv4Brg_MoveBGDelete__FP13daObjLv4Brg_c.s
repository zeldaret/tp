lbl_80C62FF8:
/* 80C62FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62FFC  7C 08 02 A6 */	mflr r0
/* 80C63000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63004  4B 41 58 D9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C63008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6300C  7C 08 03 A6 */	mtlr r0
/* 80C63010  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63014  4E 80 00 20 */	blr 
