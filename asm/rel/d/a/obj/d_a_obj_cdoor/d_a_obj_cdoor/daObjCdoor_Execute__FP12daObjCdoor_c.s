lbl_80BC79F4:
/* 80BC79F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC79F8  7C 08 02 A6 */	mflr r0
/* 80BC79FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7A00  4B 4B 0F 50 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC7A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7A08  7C 08 03 A6 */	mtlr r0
/* 80BC7A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7A10  4E 80 00 20 */	blr 
