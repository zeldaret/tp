lbl_80BCD4C8:
/* 80BCD4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD4CC  7C 08 02 A6 */	mflr r0
/* 80BCD4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCD4D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCD4DC  41 82 00 10 */	beq lbl_80BCD4EC
/* 80BCD4E0  7C 80 07 35 */	extsh. r0, r4
/* 80BCD4E4  40 81 00 08 */	ble lbl_80BCD4EC
/* 80BCD4E8  4B 70 18 54 */	b __dl__FPv
lbl_80BCD4EC:
/* 80BCD4EC  7F E3 FB 78 */	mr r3, r31
/* 80BCD4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCD4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD4F8  7C 08 03 A6 */	mtlr r0
/* 80BCD4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD500  4E 80 00 20 */	blr 
