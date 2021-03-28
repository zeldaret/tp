lbl_80031F64:
/* 80031F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031F68  7C 08 02 A6 */	mflr r0
/* 80031F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80031F74  7C 7F 1B 78 */	mr r31, r3
/* 80031F78  4B FF F0 45 */	bl reset__Q27daSus_c6data_cFv
/* 80031F7C  7F E3 FB 78 */	mr r3, r31
/* 80031F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031F88  7C 08 03 A6 */	mtlr r0
/* 80031F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80031F90  4E 80 00 20 */	blr 
