lbl_80D601F8:
/* 80D601F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D601FC  7C 08 02 A6 */	mflr r0
/* 80D60200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60204  48 00 00 15 */	bl setBaseMtx__14daTagSetBall_cFv
/* 80D60208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6020C  7C 08 03 A6 */	mtlr r0
/* 80D60210  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60214  4E 80 00 20 */	blr 
