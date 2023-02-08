lbl_80CAD0D4:
/* 80CAD0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD0D8  7C 08 02 A6 */	mflr r0
/* 80CAD0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD0E0  4B 3C B7 FD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CAD0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD0E8  7C 08 03 A6 */	mtlr r0
/* 80CAD0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD0F0  4E 80 00 20 */	blr 
