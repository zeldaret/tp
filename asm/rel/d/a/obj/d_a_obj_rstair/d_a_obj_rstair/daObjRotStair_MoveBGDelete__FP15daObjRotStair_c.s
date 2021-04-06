lbl_80CC268C:
/* 80CC268C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2690  7C 08 02 A6 */	mflr r0
/* 80CC2694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2698  4B 3B 62 45 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CC269C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC26A0  7C 08 03 A6 */	mtlr r0
/* 80CC26A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC26A8  4E 80 00 20 */	blr 
