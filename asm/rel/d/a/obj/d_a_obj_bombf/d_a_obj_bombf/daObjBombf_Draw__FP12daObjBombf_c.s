lbl_80BBAE5C:
/* 80BBAE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAE60  7C 08 02 A6 */	mflr r0
/* 80BBAE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAE68  4B FF FF 91 */	bl draw__12daObjBombf_cFv
/* 80BBAE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAE70  7C 08 03 A6 */	mtlr r0
/* 80BBAE74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAE78  4E 80 00 20 */	blr 
