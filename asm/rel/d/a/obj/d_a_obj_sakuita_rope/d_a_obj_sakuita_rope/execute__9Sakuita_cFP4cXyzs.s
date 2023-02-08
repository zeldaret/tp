lbl_80CC5314:
/* 80CC5314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5318  7C 08 02 A6 */	mflr r0
/* 80CC531C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5324  7C 7F 1B 78 */	mr r31, r3
/* 80CC5328  B0 A3 00 36 */	sth r5, 0x36(r3)
/* 80CC532C  48 00 01 19 */	bl setPlatePos__9Sakuita_cFP4cXyz
/* 80CC5330  7F E3 FB 78 */	mr r3, r31
/* 80CC5334  48 00 03 ED */	bl calcAngle__9Sakuita_cFv
/* 80CC5338  7F E3 FB 78 */	mr r3, r31
/* 80CC533C  48 00 00 75 */	bl setBaseMtx__9Sakuita_cFv
/* 80CC5340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5348  7C 08 03 A6 */	mtlr r0
/* 80CC534C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5350  4E 80 00 20 */	blr 
