lbl_801FBAAC:
/* 801FBAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBAB0  7C 08 02 A6 */	mflr r0
/* 801FBAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBABC  7C 7F 1B 78 */	mr r31, r3
/* 801FBAC0  80 63 01 30 */	lwz r3, 0x130(r3)
/* 801FBAC4  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801FBAC8  28 00 00 02 */	cmplwi r0, 2
/* 801FBACC  40 82 00 08 */	bne lbl_801FBAD4
/* 801FBAD0  4B FF BC 49 */	bl _move__13dMenu_Skill_cFv
lbl_801FBAD4:
/* 801FBAD4  80 7F 01 30 */	lwz r3, 0x130(r31)
/* 801FBAD8  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801FBADC  28 00 00 03 */	cmplwi r0, 3
/* 801FBAE0  40 82 00 0C */	bne lbl_801FBAEC
/* 801FBAE4  38 00 00 1B */	li r0, 0x1b
/* 801FBAE8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FBAEC:
/* 801FBAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBAF4  7C 08 03 A6 */	mtlr r0
/* 801FBAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBAFC  4E 80 00 20 */	blr 
