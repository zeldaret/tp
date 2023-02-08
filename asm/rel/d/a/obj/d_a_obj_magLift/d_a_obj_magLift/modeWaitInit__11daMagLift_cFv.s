lbl_80C8E26C:
/* 80C8E26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E270  7C 08 02 A6 */	mflr r0
/* 80C8E274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E27C  7C 7F 1B 78 */	mr r31, r3
/* 80C8E280  48 00 00 9D */	bl setNextPoint__11daMagLift_cFv
/* 80C8E284  7F E3 FB 78 */	mr r3, r31
/* 80C8E288  48 00 00 19 */	bl init_modeWait__11daMagLift_cFv
/* 80C8E28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E294  7C 08 03 A6 */	mtlr r0
/* 80C8E298  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E29C  4E 80 00 20 */	blr 
