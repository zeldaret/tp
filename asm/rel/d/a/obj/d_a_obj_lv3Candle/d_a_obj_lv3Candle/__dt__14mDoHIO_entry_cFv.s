lbl_80C57AF0:
/* 80C57AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57AF4  7C 08 02 A6 */	mflr r0
/* 80C57AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57B00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C57B04  41 82 00 1C */	beq lbl_80C57B20
/* 80C57B08  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C586AC@ha */
/* 80C57B0C  38 05 86 AC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C586AC@l */
/* 80C57B10  90 1F 00 00 */	stw r0, 0(r31)
/* 80C57B14  7C 80 07 35 */	extsh. r0, r4
/* 80C57B18  40 81 00 08 */	ble lbl_80C57B20
/* 80C57B1C  4B 67 72 21 */	bl __dl__FPv
lbl_80C57B20:
/* 80C57B20  7F E3 FB 78 */	mr r3, r31
/* 80C57B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57B2C  7C 08 03 A6 */	mtlr r0
/* 80C57B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57B34  4E 80 00 20 */	blr 
