lbl_80C12F78:
/* 80C12F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12F7C  7C 08 02 A6 */	mflr r0
/* 80C12F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C12F8C  41 82 00 1C */	beq lbl_80C12FA8
/* 80C12F90  3C A0 80 C1 */	lis r5, __vt__8cM3dGAab@ha
/* 80C12F94  38 05 33 64 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C12F98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C12F9C  7C 80 07 35 */	extsh. r0, r4
/* 80C12FA0  40 81 00 08 */	ble lbl_80C12FA8
/* 80C12FA4  4B 6B BD 98 */	b __dl__FPv
lbl_80C12FA8:
/* 80C12FA8  7F E3 FB 78 */	mr r3, r31
/* 80C12FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12FB4  7C 08 03 A6 */	mtlr r0
/* 80C12FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12FBC  4E 80 00 20 */	blr 
