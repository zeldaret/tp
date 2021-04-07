lbl_80D4059C:
/* 80D4059C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D405A0  7C 08 02 A6 */	mflr r0
/* 80D405A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D405A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D405AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D405B0  41 82 00 1C */	beq lbl_80D405CC
/* 80D405B4  3C A0 80 D4 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D41768@ha */
/* 80D405B8  38 05 17 68 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D41768@l */
/* 80D405BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D405C0  7C 80 07 35 */	extsh. r0, r4
/* 80D405C4  40 81 00 08 */	ble lbl_80D405CC
/* 80D405C8  4B 58 E7 75 */	bl __dl__FPv
lbl_80D405CC:
/* 80D405CC  7F E3 FB 78 */	mr r3, r31
/* 80D405D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D405D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D405D8  7C 08 03 A6 */	mtlr r0
/* 80D405DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D405E0  4E 80 00 20 */	blr 
