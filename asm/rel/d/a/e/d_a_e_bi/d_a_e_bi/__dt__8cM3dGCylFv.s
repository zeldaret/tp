lbl_8068D1A8:
/* 8068D1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D1AC  7C 08 02 A6 */	mflr r0
/* 8068D1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D1B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D1BC  41 82 00 1C */	beq lbl_8068D1D8
/* 8068D1C0  3C A0 80 69 */	lis r5, __vt__8cM3dGCyl@ha
/* 8068D1C4  38 05 DA 80 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8068D1C8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8068D1CC  7C 80 07 35 */	extsh. r0, r4
/* 8068D1D0  40 81 00 08 */	ble lbl_8068D1D8
/* 8068D1D4  4B C4 1B 68 */	b __dl__FPv
lbl_8068D1D8:
/* 8068D1D8  7F E3 FB 78 */	mr r3, r31
/* 8068D1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D1E4  7C 08 03 A6 */	mtlr r0
/* 8068D1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D1EC  4E 80 00 20 */	blr 
