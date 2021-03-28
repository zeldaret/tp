lbl_801D8C68:
/* 801D8C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8C6C  7C 08 02 A6 */	mflr r0
/* 801D8C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8C78  7C 7F 1B 78 */	mr r31, r3
/* 801D8C7C  88 83 00 F4 */	lbz r4, 0xf4(r3)
/* 801D8C80  88 A3 00 F5 */	lbz r5, 0xf5(r3)
/* 801D8C84  48 00 11 61 */	bl isGetInsect__14dMenu_Insect_cFii
/* 801D8C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8C8C  41 82 00 14 */	beq lbl_801D8CA0
/* 801D8C90  7F E3 FB 78 */	mr r3, r31
/* 801D8C94  38 80 03 68 */	li r4, 0x368
/* 801D8C98  48 00 16 6D */	bl setAButtonString__14dMenu_Insect_cFUs
/* 801D8C9C  48 00 00 10 */	b lbl_801D8CAC
lbl_801D8CA0:
/* 801D8CA0  7F E3 FB 78 */	mr r3, r31
/* 801D8CA4  38 80 00 00 */	li r4, 0
/* 801D8CA8  48 00 16 5D */	bl setAButtonString__14dMenu_Insect_cFUs
lbl_801D8CAC:
/* 801D8CAC  7F E3 FB 78 */	mr r3, r31
/* 801D8CB0  38 80 03 F9 */	li r4, 0x3f9
/* 801D8CB4  48 00 17 01 */	bl setBButtonString__14dMenu_Insect_cFUs
/* 801D8CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8CC0  7C 08 03 A6 */	mtlr r0
/* 801D8CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8CC8  4E 80 00 20 */	blr 
