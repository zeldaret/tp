lbl_80A083BC:
/* 80A083BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A083C0  7C 08 02 A6 */	mflr r0
/* 80A083C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A083C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A083CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A083D0  41 82 00 10 */	beq lbl_80A083E0
/* 80A083D4  7C 80 07 35 */	extsh. r0, r4
/* 80A083D8  40 81 00 08 */	ble lbl_80A083E0
/* 80A083DC  4B 8C 69 61 */	bl __dl__FPv
lbl_80A083E0:
/* 80A083E0  7F E3 FB 78 */	mr r3, r31
/* 80A083E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A083E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A083EC  7C 08 03 A6 */	mtlr r0
/* 80A083F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A083F4  4E 80 00 20 */	blr 
