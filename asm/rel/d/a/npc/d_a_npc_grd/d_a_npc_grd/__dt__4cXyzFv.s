lbl_809D32A4:
/* 809D32A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D32A8  7C 08 02 A6 */	mflr r0
/* 809D32AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D32B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D32B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D32B8  41 82 00 10 */	beq lbl_809D32C8
/* 809D32BC  7C 80 07 35 */	extsh. r0, r4
/* 809D32C0  40 81 00 08 */	ble lbl_809D32C8
/* 809D32C4  4B 8F BA 78 */	b __dl__FPv
lbl_809D32C8:
/* 809D32C8  7F E3 FB 78 */	mr r3, r31
/* 809D32CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D32D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D32D4  7C 08 03 A6 */	mtlr r0
/* 809D32D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D32DC  4E 80 00 20 */	blr 
