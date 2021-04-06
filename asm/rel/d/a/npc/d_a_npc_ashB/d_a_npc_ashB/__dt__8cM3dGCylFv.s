lbl_8095DFD0:
/* 8095DFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095DFD4  7C 08 02 A6 */	mflr r0
/* 8095DFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095DFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095DFE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095DFE4  41 82 00 1C */	beq lbl_8095E000
/* 8095DFE8  3C A0 80 96 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80962784@ha */
/* 8095DFEC  38 05 27 84 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80962784@l */
/* 8095DFF0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8095DFF4  7C 80 07 35 */	extsh. r0, r4
/* 8095DFF8  40 81 00 08 */	ble lbl_8095E000
/* 8095DFFC  4B 97 0D 41 */	bl __dl__FPv
lbl_8095E000:
/* 8095E000  7F E3 FB 78 */	mr r3, r31
/* 8095E004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095E008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095E00C  7C 08 03 A6 */	mtlr r0
/* 8095E010  38 21 00 10 */	addi r1, r1, 0x10
/* 8095E014  4E 80 00 20 */	blr 
