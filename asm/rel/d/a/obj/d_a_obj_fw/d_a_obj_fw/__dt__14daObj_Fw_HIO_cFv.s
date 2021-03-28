lbl_80BF2AB0:
/* 80BF2AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2AB4  7C 08 02 A6 */	mflr r0
/* 80BF2AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF2AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF2AC4  41 82 00 1C */	beq lbl_80BF2AE0
/* 80BF2AC8  3C A0 80 BF */	lis r5, __vt__14daObj_Fw_HIO_c@ha
/* 80BF2ACC  38 05 2C 0C */	addi r0, r5, __vt__14daObj_Fw_HIO_c@l
/* 80BF2AD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF2AD4  7C 80 07 35 */	extsh. r0, r4
/* 80BF2AD8  40 81 00 08 */	ble lbl_80BF2AE0
/* 80BF2ADC  4B 6D C2 60 */	b __dl__FPv
lbl_80BF2AE0:
/* 80BF2AE0  7F E3 FB 78 */	mr r3, r31
/* 80BF2AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF2AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2AEC  7C 08 03 A6 */	mtlr r0
/* 80BF2AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2AF4  4E 80 00 20 */	blr 
