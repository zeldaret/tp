lbl_8064E994:
/* 8064E994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E998  7C 08 02 A6 */	mflr r0
/* 8064E99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E9A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8064E9A8  41 82 00 1C */	beq lbl_8064E9C4
/* 8064E9AC  3C A0 80 65 */	lis r5, __vt__14daB_ZANT_HIO_c@ha /* 0x8064F5A4@ha */
/* 8064E9B0  38 05 F5 A4 */	addi r0, r5, __vt__14daB_ZANT_HIO_c@l /* 0x8064F5A4@l */
/* 8064E9B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8064E9B8  7C 80 07 35 */	extsh. r0, r4
/* 8064E9BC  40 81 00 08 */	ble lbl_8064E9C4
/* 8064E9C0  4B C8 03 7D */	bl __dl__FPv
lbl_8064E9C4:
/* 8064E9C4  7F E3 FB 78 */	mr r3, r31
/* 8064E9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E9D0  7C 08 03 A6 */	mtlr r0
/* 8064E9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E9D8  4E 80 00 20 */	blr 
