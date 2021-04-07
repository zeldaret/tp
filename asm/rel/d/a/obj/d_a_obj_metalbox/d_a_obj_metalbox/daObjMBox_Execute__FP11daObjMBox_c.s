lbl_805933F4:
/* 805933F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805933F8  7C 08 02 A6 */	mflr r0
/* 805933FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593400  4B AE 55 51 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80593404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593408  7C 08 03 A6 */	mtlr r0
/* 8059340C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593410  4E 80 00 20 */	blr 
