lbl_80CAC1D4:
/* 80CAC1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC1D8  7C 08 02 A6 */	mflr r0
/* 80CAC1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAC1E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAC1E8  41 82 00 1C */	beq lbl_80CAC204
/* 80CAC1EC  3C A0 80 CB */	lis r5, __vt__8cM3dGCyl@ha
/* 80CAC1F0  38 05 C6 F4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CAC1F4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CAC1F8  7C 80 07 35 */	extsh. r0, r4
/* 80CAC1FC  40 81 00 08 */	ble lbl_80CAC204
/* 80CAC200  4B 62 2B 3C */	b __dl__FPv
lbl_80CAC204:
/* 80CAC204  7F E3 FB 78 */	mr r3, r31
/* 80CAC208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAC20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC210  7C 08 03 A6 */	mtlr r0
/* 80CAC214  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC218  4E 80 00 20 */	blr 
