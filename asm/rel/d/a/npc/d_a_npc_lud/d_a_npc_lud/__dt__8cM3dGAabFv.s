lbl_80A6EFC8:
/* 80A6EFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EFCC  7C 08 02 A6 */	mflr r0
/* 80A6EFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EFD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6EFDC  41 82 00 1C */	beq lbl_80A6EFF8
/* 80A6EFE0  3C A0 80 A7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A70A64@ha */
/* 80A6EFE4  38 05 0A 64 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A70A64@l */
/* 80A6EFE8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A6EFEC  7C 80 07 35 */	extsh. r0, r4
/* 80A6EFF0  40 81 00 08 */	ble lbl_80A6EFF8
/* 80A6EFF4  4B 85 FD 49 */	bl __dl__FPv
lbl_80A6EFF8:
/* 80A6EFF8  7F E3 FB 78 */	mr r3, r31
/* 80A6EFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F004  7C 08 03 A6 */	mtlr r0
/* 80A6F008  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F00C  4E 80 00 20 */	blr 
