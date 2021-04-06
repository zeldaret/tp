lbl_809E03A8:
/* 809E03A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E03AC  7C 08 02 A6 */	mflr r0
/* 809E03B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E03B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E03B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E03BC  41 82 00 10 */	beq lbl_809E03CC
/* 809E03C0  7C 80 07 35 */	extsh. r0, r4
/* 809E03C4  40 81 00 08 */	ble lbl_809E03CC
/* 809E03C8  4B 8E E9 75 */	bl __dl__FPv
lbl_809E03CC:
/* 809E03CC  7F E3 FB 78 */	mr r3, r31
/* 809E03D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E03D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E03D8  7C 08 03 A6 */	mtlr r0
/* 809E03DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E03E0  4E 80 00 20 */	blr 
