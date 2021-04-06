lbl_80A298C8:
/* 80A298C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A298CC  7C 08 02 A6 */	mflr r0
/* 80A298D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A298D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A298D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A298DC  41 82 00 10 */	beq lbl_80A298EC
/* 80A298E0  7C 80 07 35 */	extsh. r0, r4
/* 80A298E4  40 81 00 08 */	ble lbl_80A298EC
/* 80A298E8  4B 8A 54 55 */	bl __dl__FPv
lbl_80A298EC:
/* 80A298EC  7F E3 FB 78 */	mr r3, r31
/* 80A298F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A298F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A298F8  7C 08 03 A6 */	mtlr r0
/* 80A298FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29900  4E 80 00 20 */	blr 
