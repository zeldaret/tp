lbl_80D65F7C:
/* 80D65F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65F80  7C 08 02 A6 */	mflr r0
/* 80D65F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65F88  4B FF FC 9D */	bl Execute__11daTagYami_cFv
/* 80D65F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65F90  7C 08 03 A6 */	mtlr r0
/* 80D65F94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65F98  4E 80 00 20 */	blr 
