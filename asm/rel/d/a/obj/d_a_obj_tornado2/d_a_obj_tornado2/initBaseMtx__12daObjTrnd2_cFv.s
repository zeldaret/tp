lbl_80D1C924:
/* 80D1C924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C928  7C 08 02 A6 */	mflr r0
/* 80D1C92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C930  48 00 00 15 */	bl setBaseMtx__12daObjTrnd2_cFv
/* 80D1C934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C938  7C 08 03 A6 */	mtlr r0
/* 80D1C93C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C940  4E 80 00 20 */	blr 
