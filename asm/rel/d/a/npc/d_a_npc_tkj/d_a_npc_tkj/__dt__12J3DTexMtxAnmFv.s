lbl_80573EC0:
/* 80573EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573EC4  7C 08 02 A6 */	mflr r0
/* 80573EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573ED0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80573ED4  41 82 00 10 */	beq lbl_80573EE4
/* 80573ED8  7C 80 07 35 */	extsh. r0, r4
/* 80573EDC  40 81 00 08 */	ble lbl_80573EE4
/* 80573EE0  4B D5 AE 5C */	b __dl__FPv
lbl_80573EE4:
/* 80573EE4  7F E3 FB 78 */	mr r3, r31
/* 80573EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573EF0  7C 08 03 A6 */	mtlr r0
/* 80573EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80573EF8  4E 80 00 20 */	blr 
