lbl_80C1FCCC:
/* 80C1FCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1FCD0  7C 08 02 A6 */	mflr r0
/* 80C1FCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1FCD8  80 83 06 34 */	lwz r4, 0x634(r3)
/* 80C1FCDC  38 04 00 24 */	addi r0, r4, 0x24
/* 80C1FCE0  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C1FCE4  48 00 00 15 */	bl setBaseMtx__12daObjIce_l_cFv
/* 80C1FCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1FCEC  7C 08 03 A6 */	mtlr r0
/* 80C1FCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1FCF4  4E 80 00 20 */	blr 
