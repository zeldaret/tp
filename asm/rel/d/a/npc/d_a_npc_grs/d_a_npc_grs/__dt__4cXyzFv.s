lbl_809E7688:
/* 809E7688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E768C  7C 08 02 A6 */	mflr r0
/* 809E7690  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7698  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E769C  41 82 00 10 */	beq lbl_809E76AC
/* 809E76A0  7C 80 07 35 */	extsh. r0, r4
/* 809E76A4  40 81 00 08 */	ble lbl_809E76AC
/* 809E76A8  4B 8E 76 94 */	b __dl__FPv
lbl_809E76AC:
/* 809E76AC  7F E3 FB 78 */	mr r3, r31
/* 809E76B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E76B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E76B8  7C 08 03 A6 */	mtlr r0
/* 809E76BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E76C0  4E 80 00 20 */	blr 
