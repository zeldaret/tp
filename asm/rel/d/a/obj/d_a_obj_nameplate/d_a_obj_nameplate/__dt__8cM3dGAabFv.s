lbl_80594D80:
/* 80594D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594D84  7C 08 02 A6 */	mflr r0
/* 80594D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594D90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80594D94  41 82 00 1C */	beq lbl_80594DB0
/* 80594D98  3C A0 80 59 */	lis r5, __vt__8cM3dGAab@ha /* 0x80594F94@ha */
/* 80594D9C  38 05 4F 94 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80594F94@l */
/* 80594DA0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80594DA4  7C 80 07 35 */	extsh. r0, r4
/* 80594DA8  40 81 00 08 */	ble lbl_80594DB0
/* 80594DAC  4B D3 9F 91 */	bl __dl__FPv
lbl_80594DB0:
/* 80594DB0  7F E3 FB 78 */	mr r3, r31
/* 80594DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594DBC  7C 08 03 A6 */	mtlr r0
/* 80594DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80594DC4  4E 80 00 20 */	blr 
