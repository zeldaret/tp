lbl_80496024:
/* 80496024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496028  7C 08 02 A6 */	mflr r0
/* 8049602C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496030  4B BE 29 20 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80496034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496038  7C 08 03 A6 */	mtlr r0
/* 8049603C  38 21 00 10 */	addi r1, r1, 0x10
/* 80496040  4E 80 00 20 */	blr 
