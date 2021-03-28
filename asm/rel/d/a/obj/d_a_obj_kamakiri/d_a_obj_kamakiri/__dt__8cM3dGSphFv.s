lbl_80C382C8:
/* 80C382C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C382CC  7C 08 02 A6 */	mflr r0
/* 80C382D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C382D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C382D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C382DC  41 82 00 1C */	beq lbl_80C382F8
/* 80C382E0  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha
/* 80C382E4  38 05 85 80 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C382E8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C382EC  7C 80 07 35 */	extsh. r0, r4
/* 80C382F0  40 81 00 08 */	ble lbl_80C382F8
/* 80C382F4  4B 69 6A 48 */	b __dl__FPv
lbl_80C382F8:
/* 80C382F8  7F E3 FB 78 */	mr r3, r31
/* 80C382FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38304  7C 08 03 A6 */	mtlr r0
/* 80C38308  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3830C  4E 80 00 20 */	blr 
