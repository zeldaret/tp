lbl_809CEDF8:
/* 809CEDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEDFC  7C 08 02 A6 */	mflr r0
/* 809CEE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CEE08  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CEE0C  41 82 00 10 */	beq lbl_809CEE1C
/* 809CEE10  7C 80 07 35 */	extsh. r0, r4
/* 809CEE14  40 81 00 08 */	ble lbl_809CEE1C
/* 809CEE18  4B 8F FF 25 */	bl __dl__FPv
lbl_809CEE1C:
/* 809CEE1C  7F E3 FB 78 */	mr r3, r31
/* 809CEE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CEE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEE28  7C 08 03 A6 */	mtlr r0
/* 809CEE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEE30  4E 80 00 20 */	blr 
