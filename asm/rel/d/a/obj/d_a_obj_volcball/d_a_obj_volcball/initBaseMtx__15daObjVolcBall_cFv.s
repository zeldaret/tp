lbl_80D21BA0:
/* 80D21BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21BA4  7C 08 02 A6 */	mflr r0
/* 80D21BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21BAC  48 00 00 15 */	bl setBaseMtx__15daObjVolcBall_cFv
/* 80D21BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21BB4  7C 08 03 A6 */	mtlr r0
/* 80D21BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21BBC  4E 80 00 20 */	blr 
