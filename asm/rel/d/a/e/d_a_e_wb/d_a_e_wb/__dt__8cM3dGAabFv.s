lbl_807E1DBC:
/* 807E1DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1DC0  7C 08 02 A6 */	mflr r0
/* 807E1DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1DCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E1DD0  41 82 00 1C */	beq lbl_807E1DEC
/* 807E1DD4  3C A0 80 7E */	lis r5, __vt__8cM3dGAab@ha
/* 807E1DD8  38 05 35 30 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807E1DDC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807E1DE0  7C 80 07 35 */	extsh. r0, r4
/* 807E1DE4  40 81 00 08 */	ble lbl_807E1DEC
/* 807E1DE8  4B AE CF 54 */	b __dl__FPv
lbl_807E1DEC:
/* 807E1DEC  7F E3 FB 78 */	mr r3, r31
/* 807E1DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1DF8  7C 08 03 A6 */	mtlr r0
/* 807E1DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1E00  4E 80 00 20 */	blr 
