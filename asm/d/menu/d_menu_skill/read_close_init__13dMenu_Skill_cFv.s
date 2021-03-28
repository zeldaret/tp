lbl_801F8218:
/* 801F8218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F821C  7C 08 02 A6 */	mflr r0
/* 801F8220  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8228  7C 7F 1B 78 */	mr r31, r3
/* 801F822C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801F8230  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801F8234  A8 04 0A 6A */	lha r0, 0xa6a(r4)
/* 801F8238  B0 03 02 02 */	sth r0, 0x202(r3)
/* 801F823C  38 00 00 00 */	li r0, 0
/* 801F8240  90 03 01 FC */	stw r0, 0x1fc(r3)
/* 801F8244  38 80 00 00 */	li r4, 0
/* 801F8248  48 00 10 19 */	bl setAButtonString__13dMenu_Skill_cFUs
/* 801F824C  7F E3 FB 78 */	mr r3, r31
/* 801F8250  38 80 00 00 */	li r4, 0
/* 801F8254  48 00 10 BD */	bl setBButtonString__13dMenu_Skill_cFUs
/* 801F8258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F825C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8260  7C 08 03 A6 */	mtlr r0
/* 801F8264  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8268  4E 80 00 20 */	blr 
