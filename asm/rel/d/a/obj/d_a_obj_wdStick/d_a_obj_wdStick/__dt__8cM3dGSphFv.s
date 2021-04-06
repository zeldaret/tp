lbl_80D31F9C:
/* 80D31F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31FA0  7C 08 02 A6 */	mflr r0
/* 80D31FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31FAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D31FB0  41 82 00 1C */	beq lbl_80D31FCC
/* 80D31FB4  3C A0 80 D3 */	lis r5, __vt__8cM3dGSph@ha /* 0x80D343A4@ha */
/* 80D31FB8  38 05 43 A4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80D343A4@l */
/* 80D31FBC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D31FC0  7C 80 07 35 */	extsh. r0, r4
/* 80D31FC4  40 81 00 08 */	ble lbl_80D31FCC
/* 80D31FC8  4B 59 CD 75 */	bl __dl__FPv
lbl_80D31FCC:
/* 80D31FCC  7F E3 FB 78 */	mr r3, r31
/* 80D31FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31FD8  7C 08 03 A6 */	mtlr r0
/* 80D31FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31FE0  4E 80 00 20 */	blr 
