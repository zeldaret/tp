lbl_80705AA8:
/* 80705AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80705AAC  7C 08 02 A6 */	mflr r0
/* 80705AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80705AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80705AB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80705ABC  41 82 00 10 */	beq lbl_80705ACC
/* 80705AC0  7C 80 07 35 */	extsh. r0, r4
/* 80705AC4  40 81 00 08 */	ble lbl_80705ACC
/* 80705AC8  4B BC 92 74 */	b __dl__FPv
lbl_80705ACC:
/* 80705ACC  7F E3 FB 78 */	mr r3, r31
/* 80705AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80705AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80705AD8  7C 08 03 A6 */	mtlr r0
/* 80705ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80705AE0  4E 80 00 20 */	blr 
