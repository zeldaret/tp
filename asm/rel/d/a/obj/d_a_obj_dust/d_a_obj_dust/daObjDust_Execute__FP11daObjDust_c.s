lbl_80BE27E8:
/* 80BE27E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE27EC  7C 08 02 A6 */	mflr r0
/* 80BE27F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE27F4  4B 49 61 5C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BE27F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE27FC  7C 08 03 A6 */	mtlr r0
/* 80BE2800  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2804  4E 80 00 20 */	blr 
