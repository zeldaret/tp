lbl_809BB0D0:
/* 809BB0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB0D4  7C 08 02 A6 */	mflr r0
/* 809BB0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB0E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BB0E4  41 82 00 10 */	beq lbl_809BB0F4
/* 809BB0E8  7C 80 07 35 */	extsh. r0, r4
/* 809BB0EC  40 81 00 08 */	ble lbl_809BB0F4
/* 809BB0F0  4B 91 3C 4D */	bl __dl__FPv
lbl_809BB0F4:
/* 809BB0F4  7F E3 FB 78 */	mr r3, r31
/* 809BB0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB100  7C 08 03 A6 */	mtlr r0
/* 809BB104  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB108  4E 80 00 20 */	blr 
