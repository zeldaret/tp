lbl_80CA8A9C:
/* 80CA8A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8AA0  7C 08 02 A6 */	mflr r0
/* 80CA8AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8AAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA8AB0  41 82 00 1C */	beq lbl_80CA8ACC
/* 80CA8AB4  3C A0 80 CB */	lis r5, __vt__8cM3dGAab@ha
/* 80CA8AB8  38 05 9D 74 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CA8ABC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA8AC0  7C 80 07 35 */	extsh. r0, r4
/* 80CA8AC4  40 81 00 08 */	ble lbl_80CA8ACC
/* 80CA8AC8  4B 62 62 74 */	b __dl__FPv
lbl_80CA8ACC:
/* 80CA8ACC  7F E3 FB 78 */	mr r3, r31
/* 80CA8AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8AD8  7C 08 03 A6 */	mtlr r0
/* 80CA8ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8AE0  4E 80 00 20 */	blr 
