lbl_80D0E434:
/* 80D0E434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E438  7C 08 02 A6 */	mflr r0
/* 80D0E43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E444  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0E448  41 82 00 1C */	beq lbl_80D0E464
/* 80D0E44C  3C A0 80 D1 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D0E7A8@ha */
/* 80D0E450  38 05 E7 A8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D0E7A8@l */
/* 80D0E454  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D0E458  7C 80 07 35 */	extsh. r0, r4
/* 80D0E45C  40 81 00 08 */	ble lbl_80D0E464
/* 80D0E460  4B 5C 08 DD */	bl __dl__FPv
lbl_80D0E464:
/* 80D0E464  7F E3 FB 78 */	mr r3, r31
/* 80D0E468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E470  7C 08 03 A6 */	mtlr r0
/* 80D0E474  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E478  4E 80 00 20 */	blr 
