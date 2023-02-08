lbl_80D5EC70:
/* 80D5EC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EC74  7C 08 02 A6 */	mflr r0
/* 80D5EC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EC7C  4B FF F3 35 */	bl create__9daTagQs_cFv
/* 80D5EC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EC84  7C 08 03 A6 */	mtlr r0
/* 80D5EC88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EC8C  4E 80 00 20 */	blr 
