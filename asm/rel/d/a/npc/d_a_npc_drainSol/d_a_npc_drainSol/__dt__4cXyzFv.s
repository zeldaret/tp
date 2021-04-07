lbl_809ADFA8:
/* 809ADFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADFAC  7C 08 02 A6 */	mflr r0
/* 809ADFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ADFB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809ADFBC  41 82 00 10 */	beq lbl_809ADFCC
/* 809ADFC0  7C 80 07 35 */	extsh. r0, r4
/* 809ADFC4  40 81 00 08 */	ble lbl_809ADFCC
/* 809ADFC8  4B 92 0D 75 */	bl __dl__FPv
lbl_809ADFCC:
/* 809ADFCC  7F E3 FB 78 */	mr r3, r31
/* 809ADFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ADFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADFD8  7C 08 03 A6 */	mtlr r0
/* 809ADFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADFE0  4E 80 00 20 */	blr 
