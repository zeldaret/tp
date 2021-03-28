lbl_80B26ED0:
/* 80B26ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26ED4  7C 08 02 A6 */	mflr r0
/* 80B26ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B26EE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B26EE4  41 82 00 10 */	beq lbl_80B26EF4
/* 80B26EE8  7C 80 07 35 */	extsh. r0, r4
/* 80B26EEC  40 81 00 08 */	ble lbl_80B26EF4
/* 80B26EF0  4B 7A 7E 4C */	b __dl__FPv
lbl_80B26EF4:
/* 80B26EF4  7F E3 FB 78 */	mr r3, r31
/* 80B26EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B26EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B26F00  7C 08 03 A6 */	mtlr r0
/* 80B26F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26F08  4E 80 00 20 */	blr 
