lbl_807E5F70:
/* 807E5F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E5F74  7C 08 02 A6 */	mflr r0
/* 807E5F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E5F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E5F80  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E5F84  41 82 00 1C */	beq lbl_807E5FA0
/* 807E5F88  3C A0 80 7E */	lis r5, __vt__8cM3dGPla@ha
/* 807E5F8C  38 05 75 94 */	addi r0, r5, __vt__8cM3dGPla@l
/* 807E5F90  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807E5F94  7C 80 07 35 */	extsh. r0, r4
/* 807E5F98  40 81 00 08 */	ble lbl_807E5FA0
/* 807E5F9C  4B AE 8D A0 */	b __dl__FPv
lbl_807E5FA0:
/* 807E5FA0  7F E3 FB 78 */	mr r3, r31
/* 807E5FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E5FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E5FAC  7C 08 03 A6 */	mtlr r0
/* 807E5FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 807E5FB4  4E 80 00 20 */	blr 
