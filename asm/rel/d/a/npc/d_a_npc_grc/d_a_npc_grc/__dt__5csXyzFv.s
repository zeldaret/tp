lbl_809CEDB8:
/* 809CEDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEDBC  7C 08 02 A6 */	mflr r0
/* 809CEDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CEDC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CEDCC  41 82 00 10 */	beq lbl_809CEDDC
/* 809CEDD0  7C 80 07 35 */	extsh. r0, r4
/* 809CEDD4  40 81 00 08 */	ble lbl_809CEDDC
/* 809CEDD8  4B 8F FF 65 */	bl __dl__FPv
lbl_809CEDDC:
/* 809CEDDC  7F E3 FB 78 */	mr r3, r31
/* 809CEDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CEDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEDE8  7C 08 03 A6 */	mtlr r0
/* 809CEDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEDF0  4E 80 00 20 */	blr 
