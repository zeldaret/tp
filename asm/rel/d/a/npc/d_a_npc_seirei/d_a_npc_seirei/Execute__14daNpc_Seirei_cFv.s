lbl_80AD5BF8:
/* 80AD5BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD5BFC  7C 08 02 A6 */	mflr r0
/* 80AD5C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD5C04  4B 67 29 28 */	b execute__8daNpcT_cFv
/* 80AD5C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD5C0C  7C 08 03 A6 */	mtlr r0
/* 80AD5C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD5C14  4E 80 00 20 */	blr 
