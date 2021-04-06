lbl_80A9A9C0:
/* 80A9A9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A9C4  7C 08 02 A6 */	mflr r0
/* 80A9A9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9A9D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9A9D4  41 82 00 10 */	beq lbl_80A9A9E4
/* 80A9A9D8  7C 80 07 35 */	extsh. r0, r4
/* 80A9A9DC  40 81 00 08 */	ble lbl_80A9A9E4
/* 80A9A9E0  4B 83 43 5D */	bl __dl__FPv
lbl_80A9A9E4:
/* 80A9A9E4  7F E3 FB 78 */	mr r3, r31
/* 80A9A9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9A9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A9F0  7C 08 03 A6 */	mtlr r0
/* 80A9A9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A9F8  4E 80 00 20 */	blr 
