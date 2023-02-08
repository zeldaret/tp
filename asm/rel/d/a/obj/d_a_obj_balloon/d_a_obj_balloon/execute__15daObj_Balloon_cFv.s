lbl_80BA86CC:
/* 80BA86CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA86D0  7C 08 02 A6 */	mflr r0
/* 80BA86D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA86D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA86DC  7C 7F 1B 78 */	mr r31, r3
/* 80BA86E0  4B FF FA D9 */	bl action__15daObj_Balloon_cFv
/* 80BA86E4  7F E3 FB 78 */	mr r3, r31
/* 80BA86E8  4B FF FA 25 */	bl cc_set__15daObj_Balloon_cFv
/* 80BA86EC  7F E3 FB 78 */	mr r3, r31
/* 80BA86F0  4B FF FF 6D */	bl mtx_set__15daObj_Balloon_cFv
/* 80BA86F4  38 60 00 01 */	li r3, 1
/* 80BA86F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA86FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8700  7C 08 03 A6 */	mtlr r0
/* 80BA8704  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8708  4E 80 00 20 */	blr 
