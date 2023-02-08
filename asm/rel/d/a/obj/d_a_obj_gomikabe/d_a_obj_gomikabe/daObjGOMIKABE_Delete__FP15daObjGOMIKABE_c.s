lbl_80BFE458:
/* 80BFE458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFE45C  7C 08 02 A6 */	mflr r0
/* 80BFE460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFE464  4B 47 A4 79 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BFE468  38 60 00 01 */	li r3, 1
/* 80BFE46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFE470  7C 08 03 A6 */	mtlr r0
/* 80BFE474  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFE478  4E 80 00 20 */	blr 
