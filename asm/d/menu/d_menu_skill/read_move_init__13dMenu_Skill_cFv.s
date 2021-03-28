lbl_801F8114:
/* 801F8114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8118  7C 08 02 A6 */	mflr r0
/* 801F811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8124  7C 7F 1B 78 */	mr r31, r3
/* 801F8128  38 80 00 00 */	li r4, 0
/* 801F812C  48 00 11 35 */	bl setAButtonString__13dMenu_Skill_cFUs
/* 801F8130  7F E3 FB 78 */	mr r3, r31
/* 801F8134  38 80 03 F9 */	li r4, 0x3f9
/* 801F8138  48 00 11 D9 */	bl setBButtonString__13dMenu_Skill_cFUs
/* 801F813C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F8140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8144  7C 08 03 A6 */	mtlr r0
/* 801F8148  38 21 00 10 */	addi r1, r1, 0x10
/* 801F814C  4E 80 00 20 */	blr 
