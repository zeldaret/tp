lbl_801F7D58:
/* 801F7D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F7D5C  7C 08 02 A6 */	mflr r0
/* 801F7D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7D64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F7D68  7C 7F 1B 78 */	mr r31, r3
/* 801F7D6C  38 80 04 0C */	li r4, 0x40c
/* 801F7D70  48 00 14 F1 */	bl setAButtonString__13dMenu_Skill_cFUs
/* 801F7D74  7F E3 FB 78 */	mr r3, r31
/* 801F7D78  38 80 03 F9 */	li r4, 0x3f9
/* 801F7D7C  48 00 15 95 */	bl setBButtonString__13dMenu_Skill_cFUs
/* 801F7D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F7D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F7D88  7C 08 03 A6 */	mtlr r0
/* 801F7D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F7D90  4E 80 00 20 */	blr 
