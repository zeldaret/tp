lbl_8099EB20:
/* 8099EB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099EB24  7C 08 02 A6 */	mflr r0
/* 8099EB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099EB2C  48 00 00 15 */	bl execute__12daNpcCoach_cFv
/* 8099EB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099EB34  7C 08 03 A6 */	mtlr r0
/* 8099EB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8099EB3C  4E 80 00 20 */	blr 
