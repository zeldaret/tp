lbl_80A64B38:
/* 80A64B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64B3C  7C 08 02 A6 */	mflr r0
/* 80A64B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A64B48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A64B4C  41 82 00 10 */	beq lbl_80A64B5C
/* 80A64B50  7C 80 07 35 */	extsh. r0, r4
/* 80A64B54  40 81 00 08 */	ble lbl_80A64B5C
/* 80A64B58  4B 86 A1 E4 */	b __dl__FPv
lbl_80A64B5C:
/* 80A64B5C  7F E3 FB 78 */	mr r3, r31
/* 80A64B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64B68  7C 08 03 A6 */	mtlr r0
/* 80A64B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64B70  4E 80 00 20 */	blr 
