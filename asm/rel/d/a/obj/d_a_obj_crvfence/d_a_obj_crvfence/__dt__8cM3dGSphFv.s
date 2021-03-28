lbl_80BCFEBC:
/* 80BCFEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFEC0  7C 08 02 A6 */	mflr r0
/* 80BCFEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCFECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCFED0  41 82 00 1C */	beq lbl_80BCFEEC
/* 80BCFED4  3C A0 80 BD */	lis r5, __vt__8cM3dGSph@ha
/* 80BCFED8  38 05 02 C0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BCFEDC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BCFEE0  7C 80 07 35 */	extsh. r0, r4
/* 80BCFEE4  40 81 00 08 */	ble lbl_80BCFEEC
/* 80BCFEE8  4B 6F EE 54 */	b __dl__FPv
lbl_80BCFEEC:
/* 80BCFEEC  7F E3 FB 78 */	mr r3, r31
/* 80BCFEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFEF8  7C 08 03 A6 */	mtlr r0
/* 80BCFEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFF00  4E 80 00 20 */	blr 
