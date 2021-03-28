lbl_80D19614:
/* 80D19614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D19618  7C 08 02 A6 */	mflr r0
/* 80D1961C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D19620  48 00 1B 55 */	bl create__12daObjTOMBO_cFv
/* 80D19624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D19628  7C 08 03 A6 */	mtlr r0
/* 80D1962C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D19630  4E 80 00 20 */	blr 
