lbl_80C44AA8:
/* 80C44AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44AAC  7C 08 02 A6 */	mflr r0
/* 80C44AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44AB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C44ABC  41 82 00 1C */	beq lbl_80C44AD8
/* 80C44AC0  3C A0 80 C4 */	lis r5, __vt__14daObj_Ki_HIO_c@ha
/* 80C44AC4  38 05 4B F0 */	addi r0, r5, __vt__14daObj_Ki_HIO_c@l
/* 80C44AC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C44ACC  7C 80 07 35 */	extsh. r0, r4
/* 80C44AD0  40 81 00 08 */	ble lbl_80C44AD8
/* 80C44AD4  4B 68 A2 68 */	b __dl__FPv
lbl_80C44AD8:
/* 80C44AD8  7F E3 FB 78 */	mr r3, r31
/* 80C44ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44AE4  7C 08 03 A6 */	mtlr r0
/* 80C44AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44AEC  4E 80 00 20 */	blr 
