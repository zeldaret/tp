lbl_806B5AC4:
/* 806B5AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5AC8  7C 08 02 A6 */	mflr r0
/* 806B5ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5AD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B5AD8  41 82 00 1C */	beq lbl_806B5AF4
/* 806B5ADC  3C A0 80 6B */	lis r5, __vt__8cM3dGAab@ha
/* 806B5AE0  38 05 62 00 */	addi r0, r5, __vt__8cM3dGAab@l
/* 806B5AE4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806B5AE8  7C 80 07 35 */	extsh. r0, r4
/* 806B5AEC  40 81 00 08 */	ble lbl_806B5AF4
/* 806B5AF0  4B C1 92 4C */	b __dl__FPv
lbl_806B5AF4:
/* 806B5AF4  7F E3 FB 78 */	mr r3, r31
/* 806B5AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5B00  7C 08 03 A6 */	mtlr r0
/* 806B5B04  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5B08  4E 80 00 20 */	blr 
