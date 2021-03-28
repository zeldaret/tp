lbl_80D5D89C:
/* 80D5D89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D8A0  7C 08 02 A6 */	mflr r0
/* 80D5D8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D8A8  38 80 FF FF */	li r4, -1
/* 80D5D8AC  4B FF FB 8D */	bl __dt__11daTagPati_cFv
/* 80D5D8B0  38 60 00 01 */	li r3, 1
/* 80D5D8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D8B8  7C 08 03 A6 */	mtlr r0
/* 80D5D8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D8C0  4E 80 00 20 */	blr 
