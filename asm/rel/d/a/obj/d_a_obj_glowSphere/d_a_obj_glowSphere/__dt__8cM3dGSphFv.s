lbl_80BF9908:
/* 80BF9908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF990C  7C 08 02 A6 */	mflr r0
/* 80BF9910  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9918  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF991C  41 82 00 1C */	beq lbl_80BF9938
/* 80BF9920  3C A0 80 C0 */	lis r5, __vt__8cM3dGSph@ha
/* 80BF9924  38 05 AB 34 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BF9928  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BF992C  7C 80 07 35 */	extsh. r0, r4
/* 80BF9930  40 81 00 08 */	ble lbl_80BF9938
/* 80BF9934  4B 6D 54 08 */	b __dl__FPv
lbl_80BF9938:
/* 80BF9938  7F E3 FB 78 */	mr r3, r31
/* 80BF993C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9944  7C 08 03 A6 */	mtlr r0
/* 80BF9948  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF994C  4E 80 00 20 */	blr 
