lbl_80500AB4:
/* 80500AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500AB8  7C 08 02 A6 */	mflr r0
/* 80500ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500AC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80500AC8  41 82 00 10 */	beq lbl_80500AD8
/* 80500ACC  7C 80 07 35 */	extsh. r0, r4
/* 80500AD0  40 81 00 08 */	ble lbl_80500AD8
/* 80500AD4  4B DC E2 69 */	bl __dl__FPv
lbl_80500AD8:
/* 80500AD8  7F E3 FB 78 */	mr r3, r31
/* 80500ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80500AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500AE4  7C 08 03 A6 */	mtlr r0
/* 80500AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80500AEC  4E 80 00 20 */	blr 
