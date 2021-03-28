lbl_80C3A628:
/* 80C3A628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3A62C  7C 08 02 A6 */	mflr r0
/* 80C3A630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3A634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3A638  7C 7F 1B 78 */	mr r31, r3
/* 80C3A63C  A8 63 07 D4 */	lha r3, 0x7d4(r3)
/* 80C3A640  38 03 FF FF */	addi r0, r3, -1
/* 80C3A644  B0 1F 07 D4 */	sth r0, 0x7d4(r31)
/* 80C3A648  A8 1F 07 D4 */	lha r0, 0x7d4(r31)
/* 80C3A64C  2C 00 00 00 */	cmpwi r0, 0
/* 80C3A650  41 81 00 0C */	bgt lbl_80C3A65C
/* 80C3A654  38 00 00 00 */	li r0, 0
/* 80C3A658  B0 1F 07 D4 */	sth r0, 0x7d4(r31)
lbl_80C3A65C:
/* 80C3A65C  7F E3 FB 78 */	mr r3, r31
/* 80C3A660  4B FF FE 79 */	bl MoveAction__10daObjKAT_cFv
/* 80C3A664  7F E3 FB 78 */	mr r3, r31
/* 80C3A668  4B 52 3A 10 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80C3A66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3A670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3A674  7C 08 03 A6 */	mtlr r0
/* 80C3A678  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3A67C  4E 80 00 20 */	blr 
