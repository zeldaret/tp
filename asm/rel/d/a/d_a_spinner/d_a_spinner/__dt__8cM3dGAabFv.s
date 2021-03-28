lbl_804D1DA8:
/* 804D1DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1DAC  7C 08 02 A6 */	mflr r0
/* 804D1DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1DB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D1DBC  41 82 00 1C */	beq lbl_804D1DD8
/* 804D1DC0  3C A0 80 4D */	lis r5, __vt__8cM3dGAab@ha
/* 804D1DC4  38 05 4F 84 */	addi r0, r5, __vt__8cM3dGAab@l
/* 804D1DC8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804D1DCC  7C 80 07 35 */	extsh. r0, r4
/* 804D1DD0  40 81 00 08 */	ble lbl_804D1DD8
/* 804D1DD4  4B DF CF 68 */	b __dl__FPv
lbl_804D1DD8:
/* 804D1DD8  7F E3 FB 78 */	mr r3, r31
/* 804D1DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1DE4  7C 08 03 A6 */	mtlr r0
/* 804D1DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1DEC  4E 80 00 20 */	blr 
