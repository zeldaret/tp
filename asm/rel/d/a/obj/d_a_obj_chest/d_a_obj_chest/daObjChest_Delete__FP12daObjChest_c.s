lbl_80BC9F24:
/* 80BC9F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9F28  7C 08 02 A6 */	mflr r0
/* 80BC9F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9F30  4B 4A E9 AD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BC9F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9F38  7C 08 03 A6 */	mtlr r0
/* 80BC9F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9F40  4E 80 00 20 */	blr 
