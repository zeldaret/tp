lbl_8055BC2C:
/* 8055BC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BC30  7C 08 02 A6 */	mflr r0
/* 8055BC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BC38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055BC3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8055BC40  41 82 00 10 */	beq lbl_8055BC50
/* 8055BC44  7C 80 07 35 */	extsh. r0, r4
/* 8055BC48  40 81 00 08 */	ble lbl_8055BC50
/* 8055BC4C  4B D7 30 F1 */	bl __dl__FPv
lbl_8055BC50:
/* 8055BC50  7F E3 FB 78 */	mr r3, r31
/* 8055BC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055BC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BC5C  7C 08 03 A6 */	mtlr r0
/* 8055BC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BC64  4E 80 00 20 */	blr 
