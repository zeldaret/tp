lbl_804F9ED8:
/* 804F9ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9EDC  7C 08 02 A6 */	mflr r0
/* 804F9EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9EE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804F9EEC  41 82 00 10 */	beq lbl_804F9EFC
/* 804F9EF0  7C 80 07 35 */	extsh. r0, r4
/* 804F9EF4  40 81 00 08 */	ble lbl_804F9EFC
/* 804F9EF8  4B DD 4E 44 */	b __dl__FPv
lbl_804F9EFC:
/* 804F9EFC  7F E3 FB 78 */	mr r3, r31
/* 804F9F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9F08  7C 08 03 A6 */	mtlr r0
/* 804F9F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9F10  4E 80 00 20 */	blr 
