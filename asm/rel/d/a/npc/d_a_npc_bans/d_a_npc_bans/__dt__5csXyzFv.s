lbl_80966ED8:
/* 80966ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966EDC  7C 08 02 A6 */	mflr r0
/* 80966EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80966EE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80966EEC  41 82 00 10 */	beq lbl_80966EFC
/* 80966EF0  7C 80 07 35 */	extsh. r0, r4
/* 80966EF4  40 81 00 08 */	ble lbl_80966EFC
/* 80966EF8  4B 96 7E 45 */	bl __dl__FPv
lbl_80966EFC:
/* 80966EFC  7F E3 FB 78 */	mr r3, r31
/* 80966F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80966F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966F08  7C 08 03 A6 */	mtlr r0
/* 80966F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80966F10  4E 80 00 20 */	blr 
