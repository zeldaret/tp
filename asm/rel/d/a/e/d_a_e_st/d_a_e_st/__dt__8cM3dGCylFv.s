lbl_807A5F9C:
/* 807A5F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A5FA0  7C 08 02 A6 */	mflr r0
/* 807A5FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A5FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A5FAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A5FB0  41 82 00 1C */	beq lbl_807A5FCC
/* 807A5FB4  3C A0 80 7A */	lis r5, __vt__8cM3dGCyl@ha
/* 807A5FB8  38 05 6C FC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 807A5FBC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 807A5FC0  7C 80 07 35 */	extsh. r0, r4
/* 807A5FC4  40 81 00 08 */	ble lbl_807A5FCC
/* 807A5FC8  4B B2 8D 74 */	b __dl__FPv
lbl_807A5FCC:
/* 807A5FCC  7F E3 FB 78 */	mr r3, r31
/* 807A5FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A5FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A5FD8  7C 08 03 A6 */	mtlr r0
/* 807A5FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 807A5FE0  4E 80 00 20 */	blr 
