lbl_80C71E60:
/* 80C71E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71E64  7C 08 02 A6 */	mflr r0
/* 80C71E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71E6C  4B 40 6A 71 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C71E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71E74  7C 08 03 A6 */	mtlr r0
/* 80C71E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71E7C  4E 80 00 20 */	blr 
