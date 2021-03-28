lbl_80B0C898:
/* 80B0C898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C89C  7C 08 02 A6 */	mflr r0
/* 80B0C8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C8A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C8A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0C8AC  41 82 00 1C */	beq lbl_80B0C8C8
/* 80B0C8B0  3C A0 80 B1 */	lis r5, __vt__8cM3dGSph@ha
/* 80B0C8B4  38 05 0C C0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80B0C8B8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80B0C8BC  7C 80 07 35 */	extsh. r0, r4
/* 80B0C8C0  40 81 00 08 */	ble lbl_80B0C8C8
/* 80B0C8C4  4B 7C 24 78 */	b __dl__FPv
lbl_80B0C8C8:
/* 80B0C8C8  7F E3 FB 78 */	mr r3, r31
/* 80B0C8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C8D4  7C 08 03 A6 */	mtlr r0
/* 80B0C8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C8DC  4E 80 00 20 */	blr 
