lbl_80815F90:
/* 80815F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80815F94  7C 08 02 A6 */	mflr r0
/* 80815F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80815F9C  4B FF FF 8D */	bl create__12daE_YM_TAG_cFv
/* 80815FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815FA4  7C 08 03 A6 */	mtlr r0
/* 80815FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80815FAC  4E 80 00 20 */	blr 
