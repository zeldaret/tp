lbl_80B23AB0:
/* 80B23AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23AB4  7C 08 02 A6 */	mflr r0
/* 80B23AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23AC4  41 82 00 10 */	beq lbl_80B23AD4
/* 80B23AC8  7C 80 07 35 */	extsh. r0, r4
/* 80B23ACC  40 81 00 08 */	ble lbl_80B23AD4
/* 80B23AD0  4B 7A B2 6D */	bl __dl__FPv
lbl_80B23AD4:
/* 80B23AD4  7F E3 FB 78 */	mr r3, r31
/* 80B23AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23AE0  7C 08 03 A6 */	mtlr r0
/* 80B23AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23AE8  4E 80 00 20 */	blr 
