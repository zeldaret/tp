lbl_800582F8:
/* 800582F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800582FC  7C 08 02 A6 */	mflr r0
/* 80058300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80058304  4B FF FF 8D */	bl wether_move_thunder__Fv
/* 80058308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005830C  7C 08 03 A6 */	mtlr r0
/* 80058310  38 21 00 10 */	addi r1, r1, 0x10
/* 80058314  4E 80 00 20 */	blr 
