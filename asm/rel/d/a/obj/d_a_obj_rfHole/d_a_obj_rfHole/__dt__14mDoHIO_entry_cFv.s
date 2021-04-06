lbl_80CB8EBC:
/* 80CB8EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8EC0  7C 08 02 A6 */	mflr r0
/* 80CB8EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8ECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB8ED0  41 82 00 1C */	beq lbl_80CB8EEC
/* 80CB8ED4  3C A0 80 CC */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80CB9BD0@ha */
/* 80CB8ED8  38 05 9B D0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80CB9BD0@l */
/* 80CB8EDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB8EE0  7C 80 07 35 */	extsh. r0, r4
/* 80CB8EE4  40 81 00 08 */	ble lbl_80CB8EEC
/* 80CB8EE8  4B 61 5E 55 */	bl __dl__FPv
lbl_80CB8EEC:
/* 80CB8EEC  7F E3 FB 78 */	mr r3, r31
/* 80CB8EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8EF8  7C 08 03 A6 */	mtlr r0
/* 80CB8EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8F00  4E 80 00 20 */	blr 
