lbl_80CDE2C0:
/* 80CDE2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE2C4  7C 08 02 A6 */	mflr r0
/* 80CDE2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE2CC  3C 60 80 CE */	lis r3, __vt__20daObj_SMTile_Param_c@ha /* 0x80CDE460@ha */
/* 80CDE2D0  38 03 E4 60 */	addi r0, r3, __vt__20daObj_SMTile_Param_c@l /* 0x80CDE460@l */
/* 80CDE2D4  3C 60 80 CE */	lis r3, l_HIO@ha /* 0x80CDE484@ha */
/* 80CDE2D8  94 03 E4 84 */	stwu r0, l_HIO@l(r3)  /* 0x80CDE484@l */
/* 80CDE2DC  3C 80 80 CE */	lis r4, __dt__20daObj_SMTile_Param_cFv@ha /* 0x80CDE300@ha */
/* 80CDE2E0  38 84 E3 00 */	addi r4, r4, __dt__20daObj_SMTile_Param_cFv@l /* 0x80CDE300@l */
/* 80CDE2E4  3C A0 80 CE */	lis r5, lit_3805@ha /* 0x80CDE478@ha */
/* 80CDE2E8  38 A5 E4 78 */	addi r5, r5, lit_3805@l /* 0x80CDE478@l */
/* 80CDE2EC  4B FF EF 4D */	bl __register_global_object
/* 80CDE2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE2F4  7C 08 03 A6 */	mtlr r0
/* 80CDE2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE2FC  4E 80 00 20 */	blr 
