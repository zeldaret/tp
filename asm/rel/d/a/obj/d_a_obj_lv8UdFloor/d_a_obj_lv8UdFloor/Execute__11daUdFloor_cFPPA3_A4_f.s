lbl_80C8C0DC:
/* 80C8C0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8C0E0  7C 08 02 A6 */	mflr r0
/* 80C8C0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8C0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8C0EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8C0F0  7C 7E 1B 78 */	mr r30, r3
/* 80C8C0F4  7C 9F 23 78 */	mr r31, r4
/* 80C8C0F8  48 00 00 35 */	bl moveLift__11daUdFloor_cFv
/* 80C8C0FC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8C100  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8C104  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8C108  7F C3 F3 78 */	mr r3, r30
/* 80C8C10C  4B FF FC BD */	bl setBaseMtx__11daUdFloor_cFv
/* 80C8C110  38 60 00 01 */	li r3, 1
/* 80C8C114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8C118  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8C11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8C120  7C 08 03 A6 */	mtlr r0
/* 80C8C124  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8C128  4E 80 00 20 */	blr 
