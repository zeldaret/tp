lbl_807E1D74:
/* 807E1D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1D78  7C 08 02 A6 */	mflr r0
/* 807E1D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1D84  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E1D88  41 82 00 1C */	beq lbl_807E1DA4
/* 807E1D8C  3C A0 80 7E */	lis r5, __vt__8cM3dGSph@ha /* 0x807E3524@ha */
/* 807E1D90  38 05 35 24 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807E3524@l */
/* 807E1D94  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807E1D98  7C 80 07 35 */	extsh. r0, r4
/* 807E1D9C  40 81 00 08 */	ble lbl_807E1DA4
/* 807E1DA0  4B AE CF 9D */	bl __dl__FPv
lbl_807E1DA4:
/* 807E1DA4  7F E3 FB 78 */	mr r3, r31
/* 807E1DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1DB0  7C 08 03 A6 */	mtlr r0
/* 807E1DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1DB8  4E 80 00 20 */	blr 
