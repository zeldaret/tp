lbl_80D0CBC8:
/* 80D0CBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CBCC  7C 08 02 A6 */	mflr r0
/* 80D0CBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CBD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0CBDC  41 82 00 1C */	beq lbl_80D0CBF8
/* 80D0CBE0  3C A0 80 D1 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D0D3B8@ha */
/* 80D0CBE4  38 05 D3 B8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D0D3B8@l */
/* 80D0CBE8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D0CBEC  7C 80 07 35 */	extsh. r0, r4
/* 80D0CBF0  40 81 00 08 */	ble lbl_80D0CBF8
/* 80D0CBF4  4B 5C 21 49 */	bl __dl__FPv
lbl_80D0CBF8:
/* 80D0CBF8  7F E3 FB 78 */	mr r3, r31
/* 80D0CBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CC04  7C 08 03 A6 */	mtlr r0
/* 80D0CC08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CC0C  4E 80 00 20 */	blr 
