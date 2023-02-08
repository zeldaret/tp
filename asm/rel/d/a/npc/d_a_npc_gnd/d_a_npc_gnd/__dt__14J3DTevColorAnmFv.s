lbl_809BBCC4:
/* 809BBCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBCC8  7C 08 02 A6 */	mflr r0
/* 809BBCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BBCD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BBCD8  41 82 00 10 */	beq lbl_809BBCE8
/* 809BBCDC  7C 80 07 35 */	extsh. r0, r4
/* 809BBCE0  40 81 00 08 */	ble lbl_809BBCE8
/* 809BBCE4  4B 91 30 59 */	bl __dl__FPv
lbl_809BBCE8:
/* 809BBCE8  7F E3 FB 78 */	mr r3, r31
/* 809BBCEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BBCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBCF4  7C 08 03 A6 */	mtlr r0
/* 809BBCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBCFC  4E 80 00 20 */	blr 
