lbl_80D2F324:
/* 80D2F324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F328  7C 08 02 A6 */	mflr r0
/* 80D2F32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F330  48 00 00 15 */	bl setBaseMtx__16daObjWaterFall_cFv
/* 80D2F334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F338  7C 08 03 A6 */	mtlr r0
/* 80D2F33C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F340  4E 80 00 20 */	blr 
