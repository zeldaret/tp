lbl_80A9CAC4:
/* 80A9CAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CAC8  7C 08 02 A6 */	mflr r0
/* 80A9CACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9CAD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9CAD8  41 82 00 1C */	beq lbl_80A9CAF4
/* 80A9CADC  3C A0 80 AA */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80AA2A14@ha */
/* 80A9CAE0  38 05 2A 14 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80AA2A14@l */
/* 80A9CAE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A9CAE8  7C 80 07 35 */	extsh. r0, r4
/* 80A9CAEC  40 81 00 08 */	ble lbl_80A9CAF4
/* 80A9CAF0  4B 83 22 4D */	bl __dl__FPv
lbl_80A9CAF4:
/* 80A9CAF4  7F E3 FB 78 */	mr r3, r31
/* 80A9CAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9CAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CB00  7C 08 03 A6 */	mtlr r0
/* 80A9CB04  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CB08  4E 80 00 20 */	blr 
