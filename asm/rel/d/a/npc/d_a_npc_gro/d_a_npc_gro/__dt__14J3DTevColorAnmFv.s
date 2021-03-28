lbl_809DAFC8:
/* 809DAFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DAFCC  7C 08 02 A6 */	mflr r0
/* 809DAFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DAFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DAFD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DAFDC  41 82 00 10 */	beq lbl_809DAFEC
/* 809DAFE0  7C 80 07 35 */	extsh. r0, r4
/* 809DAFE4  40 81 00 08 */	ble lbl_809DAFEC
/* 809DAFE8  4B 8F 3D 54 */	b __dl__FPv
lbl_809DAFEC:
/* 809DAFEC  7F E3 FB 78 */	mr r3, r31
/* 809DAFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DAFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DAFF8  7C 08 03 A6 */	mtlr r0
/* 809DAFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB000  4E 80 00 20 */	blr 
