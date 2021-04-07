lbl_809BBDD8:
/* 809BBDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBDDC  7C 08 02 A6 */	mflr r0
/* 809BBDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BBDE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BBDEC  41 82 00 10 */	beq lbl_809BBDFC
/* 809BBDF0  7C 80 07 35 */	extsh. r0, r4
/* 809BBDF4  40 81 00 08 */	ble lbl_809BBDFC
/* 809BBDF8  4B 91 2F 45 */	bl __dl__FPv
lbl_809BBDFC:
/* 809BBDFC  7F E3 FB 78 */	mr r3, r31
/* 809BBE00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BBE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBE08  7C 08 03 A6 */	mtlr r0
/* 809BBE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBE10  4E 80 00 20 */	blr 
