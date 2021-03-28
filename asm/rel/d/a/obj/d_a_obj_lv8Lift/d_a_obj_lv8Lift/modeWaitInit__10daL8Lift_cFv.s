lbl_80C896D4:
/* 80C896D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C896D8  7C 08 02 A6 */	mflr r0
/* 80C896DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C896E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C896E4  7C 7F 1B 78 */	mr r31, r3
/* 80C896E8  48 00 03 F5 */	bl setNextPoint__10daL8Lift_cFv
/* 80C896EC  7F E3 FB 78 */	mr r3, r31
/* 80C896F0  48 00 00 19 */	bl init_modeWait__10daL8Lift_cFv
/* 80C896F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C896F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C896FC  7C 08 03 A6 */	mtlr r0
/* 80C89700  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89704  4E 80 00 20 */	blr 
