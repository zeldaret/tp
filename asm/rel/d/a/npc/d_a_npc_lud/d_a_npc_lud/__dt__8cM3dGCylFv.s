lbl_80A6EF80:
/* 80A6EF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EF84  7C 08 02 A6 */	mflr r0
/* 80A6EF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EF90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6EF94  41 82 00 1C */	beq lbl_80A6EFB0
/* 80A6EF98  3C A0 80 A7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A70A70@ha */
/* 80A6EF9C  38 05 0A 70 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A70A70@l */
/* 80A6EFA0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A6EFA4  7C 80 07 35 */	extsh. r0, r4
/* 80A6EFA8  40 81 00 08 */	ble lbl_80A6EFB0
/* 80A6EFAC  4B 85 FD 91 */	bl __dl__FPv
lbl_80A6EFB0:
/* 80A6EFB0  7F E3 FB 78 */	mr r3, r31
/* 80A6EFB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6EFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EFBC  7C 08 03 A6 */	mtlr r0
/* 80A6EFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EFC4  4E 80 00 20 */	blr 
