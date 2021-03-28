lbl_80C9089C:
/* 80C9089C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C908A0  7C 08 02 A6 */	mflr r0
/* 80C908A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C908A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C908AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C908B0  41 82 00 1C */	beq lbl_80C908CC
/* 80C908B4  3C A0 80 C9 */	lis r5, __vt__16daObj_Maki_HIO_c@ha
/* 80C908B8  38 05 0A 38 */	addi r0, r5, __vt__16daObj_Maki_HIO_c@l
/* 80C908BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C908C0  7C 80 07 35 */	extsh. r0, r4
/* 80C908C4  40 81 00 08 */	ble lbl_80C908CC
/* 80C908C8  4B 63 E4 74 */	b __dl__FPv
lbl_80C908CC:
/* 80C908CC  7F E3 FB 78 */	mr r3, r31
/* 80C908D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C908D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C908D8  7C 08 03 A6 */	mtlr r0
/* 80C908DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C908E0  4E 80 00 20 */	blr 
