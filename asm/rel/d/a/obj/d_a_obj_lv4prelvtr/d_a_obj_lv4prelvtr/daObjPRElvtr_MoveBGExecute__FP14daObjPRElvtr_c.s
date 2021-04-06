lbl_80C68AA4:
/* 80C68AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68AA8  7C 08 02 A6 */	mflr r0
/* 80C68AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68AB0  4B 40 FE A1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C68AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68AB8  7C 08 03 A6 */	mtlr r0
/* 80C68ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68AC0  4E 80 00 20 */	blr 
