lbl_80B2BFD4:
/* 80B2BFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BFD8  7C 08 02 A6 */	mflr r0
/* 80B2BFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BFE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2BFE8  41 82 00 1C */	beq lbl_80B2C004
/* 80B2BFEC  3C A0 80 B3 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B2DC24@ha */
/* 80B2BFF0  38 05 DC 24 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B2DC24@l */
/* 80B2BFF4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B2BFF8  7C 80 07 35 */	extsh. r0, r4
/* 80B2BFFC  40 81 00 08 */	ble lbl_80B2C004
/* 80B2C000  4B 7A 2D 3D */	bl __dl__FPv
lbl_80B2C004:
/* 80B2C004  7F E3 FB 78 */	mr r3, r31
/* 80B2C008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C010  7C 08 03 A6 */	mtlr r0
/* 80B2C014  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C018  4E 80 00 20 */	blr 
