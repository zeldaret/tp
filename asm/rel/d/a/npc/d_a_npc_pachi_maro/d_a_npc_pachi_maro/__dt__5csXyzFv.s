lbl_80A9A9FC:
/* 80A9A9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AA00  7C 08 02 A6 */	mflr r0
/* 80A9AA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AA0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9AA10  41 82 00 10 */	beq lbl_80A9AA20
/* 80A9AA14  7C 80 07 35 */	extsh. r0, r4
/* 80A9AA18  40 81 00 08 */	ble lbl_80A9AA20
/* 80A9AA1C  4B 83 43 21 */	bl __dl__FPv
lbl_80A9AA20:
/* 80A9AA20  7F E3 FB 78 */	mr r3, r31
/* 80A9AA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9AA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9AA2C  7C 08 03 A6 */	mtlr r0
/* 80A9AA30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9AA34  4E 80 00 20 */	blr 
