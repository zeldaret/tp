lbl_806F7AC4:
/* 806F7AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7AC8  7C 08 02 A6 */	mflr r0
/* 806F7ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7AD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F7AD8  41 82 00 1C */	beq lbl_806F7AF4
/* 806F7ADC  3C A0 80 6F */	lis r5, __vt__12daE_IS_HIO_c@ha
/* 806F7AE0  38 05 7D BC */	addi r0, r5, __vt__12daE_IS_HIO_c@l
/* 806F7AE4  90 1F 00 00 */	stw r0, 0(r31)
/* 806F7AE8  7C 80 07 35 */	extsh. r0, r4
/* 806F7AEC  40 81 00 08 */	ble lbl_806F7AF4
/* 806F7AF0  4B BD 72 4C */	b __dl__FPv
lbl_806F7AF4:
/* 806F7AF4  7F E3 FB 78 */	mr r3, r31
/* 806F7AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7B00  7C 08 03 A6 */	mtlr r0
/* 806F7B04  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7B08  4E 80 00 20 */	blr 
