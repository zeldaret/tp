lbl_806E9ABC:
/* 806E9ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9AC0  7C 08 02 A6 */	mflr r0
/* 806E9AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9ACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9AD0  41 82 00 1C */	beq lbl_806E9AEC
/* 806E9AD4  3C A0 80 6F */	lis r5, __vt__8cM3dGSph@ha /* 0x806EA47C@ha */
/* 806E9AD8  38 05 A4 7C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806EA47C@l */
/* 806E9ADC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806E9AE0  7C 80 07 35 */	extsh. r0, r4
/* 806E9AE4  40 81 00 08 */	ble lbl_806E9AEC
/* 806E9AE8  4B BE 52 55 */	bl __dl__FPv
lbl_806E9AEC:
/* 806E9AEC  7F E3 FB 78 */	mr r3, r31
/* 806E9AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9AF8  7C 08 03 A6 */	mtlr r0
/* 806E9AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9B00  4E 80 00 20 */	blr 
