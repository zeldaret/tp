lbl_809F3AC4:
/* 809F3AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3AC8  7C 08 02 A6 */	mflr r0
/* 809F3ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3AD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F3AD8  41 82 00 1C */	beq lbl_809F3AF4
/* 809F3ADC  3C A0 80 A0 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 809F3AE0  38 05 8D D8 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 809F3AE4  90 1F 00 00 */	stw r0, 0(r31)
/* 809F3AE8  7C 80 07 35 */	extsh. r0, r4
/* 809F3AEC  40 81 00 08 */	ble lbl_809F3AF4
/* 809F3AF0  4B 8D B2 4C */	b __dl__FPv
lbl_809F3AF4:
/* 809F3AF4  7F E3 FB 78 */	mr r3, r31
/* 809F3AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F3AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3B00  7C 08 03 A6 */	mtlr r0
/* 809F3B04  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3B08  4E 80 00 20 */	blr 
