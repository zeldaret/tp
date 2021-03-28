lbl_80B0BFE0:
/* 80B0BFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0BFE4  7C 08 02 A6 */	mflr r0
/* 80B0BFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0BFEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0BFF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0BFF4  41 82 00 1C */	beq lbl_80B0C010
/* 80B0BFF8  3C A0 80 B1 */	lis r5, __vt__8cM3dGSph@ha
/* 80B0BFFC  38 05 C5 64 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80B0C000  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80B0C004  7C 80 07 35 */	extsh. r0, r4
/* 80B0C008  40 81 00 08 */	ble lbl_80B0C010
/* 80B0C00C  4B 7C 2D 30 */	b __dl__FPv
lbl_80B0C010:
/* 80B0C010  7F E3 FB 78 */	mr r3, r31
/* 80B0C014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C01C  7C 08 03 A6 */	mtlr r0
/* 80B0C020  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C024  4E 80 00 20 */	blr 
