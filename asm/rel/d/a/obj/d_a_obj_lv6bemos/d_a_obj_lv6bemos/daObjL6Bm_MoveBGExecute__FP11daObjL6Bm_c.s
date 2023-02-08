lbl_80C7DDFC:
/* 80C7DDFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DE00  7C 08 02 A6 */	mflr r0
/* 80C7DE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DE08  4B 3F AB 49 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C7DE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DE10  7C 08 03 A6 */	mtlr r0
/* 80C7DE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DE18  4E 80 00 20 */	blr 
