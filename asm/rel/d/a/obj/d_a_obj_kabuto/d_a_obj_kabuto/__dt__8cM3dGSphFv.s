lbl_80C2DFD0:
/* 80C2DFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2DFD4  7C 08 02 A6 */	mflr r0
/* 80C2DFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2DFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2DFE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2DFE4  41 82 00 1C */	beq lbl_80C2E000
/* 80C2DFE8  3C A0 80 C3 */	lis r5, __vt__8cM3dGSph@ha
/* 80C2DFEC  38 05 E2 9C */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C2DFF0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C2DFF4  7C 80 07 35 */	extsh. r0, r4
/* 80C2DFF8  40 81 00 08 */	ble lbl_80C2E000
/* 80C2DFFC  4B 6A 0D 40 */	b __dl__FPv
lbl_80C2E000:
/* 80C2E000  7F E3 FB 78 */	mr r3, r31
/* 80C2E004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2E008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E00C  7C 08 03 A6 */	mtlr r0
/* 80C2E010  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E014  4E 80 00 20 */	blr 
