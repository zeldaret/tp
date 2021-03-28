lbl_80998AA8:
/* 80998AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998AAC  7C 08 02 A6 */	mflr r0
/* 80998AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80998AB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80998ABC  41 82 00 1C */	beq lbl_80998AD8
/* 80998AC0  3C A0 80 9A */	lis r5, __vt__8cM3dGAab@ha
/* 80998AC4  38 05 9F 48 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80998AC8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80998ACC  7C 80 07 35 */	extsh. r0, r4
/* 80998AD0  40 81 00 08 */	ble lbl_80998AD8
/* 80998AD4  4B 93 62 68 */	b __dl__FPv
lbl_80998AD8:
/* 80998AD8  7F E3 FB 78 */	mr r3, r31
/* 80998ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998AE4  7C 08 03 A6 */	mtlr r0
/* 80998AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80998AEC  4E 80 00 20 */	blr 
