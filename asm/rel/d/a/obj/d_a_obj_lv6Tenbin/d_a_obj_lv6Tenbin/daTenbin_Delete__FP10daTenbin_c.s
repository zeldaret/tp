lbl_80C778C4:
/* 80C778C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C778C8  7C 08 02 A6 */	mflr r0
/* 80C778CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C778D0  4B 40 10 0C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C778D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C778D8  7C 08 03 A6 */	mtlr r0
/* 80C778DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C778E0  4E 80 00 20 */	blr 
