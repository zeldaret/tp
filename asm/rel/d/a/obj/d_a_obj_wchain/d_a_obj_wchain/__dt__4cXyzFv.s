lbl_80D303D8:
/* 80D303D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D303DC  7C 08 02 A6 */	mflr r0
/* 80D303E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D303E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D303E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D303EC  41 82 00 10 */	beq lbl_80D303FC
/* 80D303F0  7C 80 07 35 */	extsh. r0, r4
/* 80D303F4  40 81 00 08 */	ble lbl_80D303FC
/* 80D303F8  4B 59 E9 44 */	b __dl__FPv
lbl_80D303FC:
/* 80D303FC  7F E3 FB 78 */	mr r3, r31
/* 80D30400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D30404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D30408  7C 08 03 A6 */	mtlr r0
/* 80D3040C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D30410  4E 80 00 20 */	blr 
