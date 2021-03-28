lbl_804D6ED4:
/* 804D6ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6ED8  7C 08 02 A6 */	mflr r0
/* 804D6EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6EE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D6EE8  41 82 00 10 */	beq lbl_804D6EF8
/* 804D6EEC  7C 80 07 35 */	extsh. r0, r4
/* 804D6EF0  40 81 00 08 */	ble lbl_804D6EF8
/* 804D6EF4  4B DF 7E 48 */	b __dl__FPv
lbl_804D6EF8:
/* 804D6EF8  7F E3 FB 78 */	mr r3, r31
/* 804D6EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6F04  7C 08 03 A6 */	mtlr r0
/* 804D6F08  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6F0C  4E 80 00 20 */	blr 
