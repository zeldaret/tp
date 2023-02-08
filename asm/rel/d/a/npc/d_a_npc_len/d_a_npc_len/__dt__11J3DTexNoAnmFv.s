lbl_80A64ACC:
/* 80A64ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64AD0  7C 08 02 A6 */	mflr r0
/* 80A64AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A64ADC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A64AE0  41 82 00 1C */	beq lbl_80A64AFC
/* 80A64AE4  3C A0 80 A7 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80A698D4@ha */
/* 80A64AE8  38 05 98 D4 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80A698D4@l */
/* 80A64AEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A64AF0  7C 80 07 35 */	extsh. r0, r4
/* 80A64AF4  40 81 00 08 */	ble lbl_80A64AFC
/* 80A64AF8  4B 86 A2 45 */	bl __dl__FPv
lbl_80A64AFC:
/* 80A64AFC  7F E3 FB 78 */	mr r3, r31
/* 80A64B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64B08  7C 08 03 A6 */	mtlr r0
/* 80A64B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64B10  4E 80 00 20 */	blr 
