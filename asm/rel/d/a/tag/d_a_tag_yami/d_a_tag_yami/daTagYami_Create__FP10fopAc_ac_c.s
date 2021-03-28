lbl_80D65F5C:
/* 80D65F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65F60  7C 08 02 A6 */	mflr r0
/* 80D65F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65F68  4B FF FA 91 */	bl create__11daTagYami_cFv
/* 80D65F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65F70  7C 08 03 A6 */	mtlr r0
/* 80D65F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65F78  4E 80 00 20 */	blr 
