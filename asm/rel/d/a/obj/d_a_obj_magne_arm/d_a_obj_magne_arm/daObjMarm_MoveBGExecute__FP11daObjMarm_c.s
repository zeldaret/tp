lbl_80592780:
/* 80592780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592784  7C 08 02 A6 */	mflr r0
/* 80592788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059278C  4B AE 61 C5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80592790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592794  7C 08 03 A6 */	mtlr r0
/* 80592798  38 21 00 10 */	addi r1, r1, 0x10
/* 8059279C  4E 80 00 20 */	blr 
