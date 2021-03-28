lbl_801F2E88:
/* 801F2E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2E8C  7C 08 02 A6 */	mflr r0
/* 801F2E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2E98  7C 7F 1B 78 */	mr r31, r3
/* 801F2E9C  48 00 03 F1 */	bl YesNoSelect__12dMenu_save_cFv
/* 801F2EA0  2C 03 00 00 */	cmpwi r3, 0
/* 801F2EA4  41 82 00 50 */	beq lbl_801F2EF4
/* 801F2EA8  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F2EAC  28 00 00 00 */	cmplwi r0, 0
/* 801F2EB0  41 82 00 20 */	beq lbl_801F2ED0
/* 801F2EB4  38 00 00 00 */	li r0, 0
/* 801F2EB8  98 1F 01 BB */	stb r0, 0x1bb(r31)
/* 801F2EBC  38 00 00 29 */	li r0, 0x29
/* 801F2EC0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2EC4  38 00 00 03 */	li r0, 3
/* 801F2EC8  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F2ECC  48 00 00 28 */	b lbl_801F2EF4
lbl_801F2ED0:
/* 801F2ED0  38 00 00 01 */	li r0, 1
/* 801F2ED4  98 1F 21 90 */	stb r0, 0x2190(r31)
/* 801F2ED8  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F2EDC  7F E3 FB 78 */	mr r3, r31
/* 801F2EE0  38 80 03 CF */	li r4, 0x3cf
/* 801F2EE4  38 A0 00 00 */	li r5, 0
/* 801F2EE8  48 00 05 D5 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F2EEC  38 00 00 27 */	li r0, 0x27
/* 801F2EF0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2EF4:
/* 801F2EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2EFC  7C 08 03 A6 */	mtlr r0
/* 801F2F00  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2F04  4E 80 00 20 */	blr 
