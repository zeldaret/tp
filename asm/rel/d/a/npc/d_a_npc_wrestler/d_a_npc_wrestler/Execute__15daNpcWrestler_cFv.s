lbl_80B2FDE4:
/* 80B2FDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FDE8  7C 08 02 A6 */	mflr r0
/* 80B2FDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FDF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FDF4  7C 7F 1B 78 */	mr r31, r3
/* 80B2FDF8  48 00 0D F5 */	bl checkArenaInfo__15daNpcWrestler_cFv
/* 80B2FDFC  7F E3 FB 78 */	mr r3, r31
/* 80B2FE00  4B 62 22 15 */	bl execute__8daNpcF_cFv
/* 80B2FE04  38 60 00 01 */	li r3, 1
/* 80B2FE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FE10  7C 08 03 A6 */	mtlr r0
/* 80B2FE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FE18  4E 80 00 20 */	blr 
