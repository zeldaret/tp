lbl_80BD5614:
/* 80BD5614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5618  7C 08 02 A6 */	mflr r0
/* 80BD561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD5624  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD5628  41 82 00 1C */	beq lbl_80BD5644
/* 80BD562C  3C A0 80 BD */	lis r5, __vt__8cM3dGCyl@ha
/* 80BD5630  38 05 5A F0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BD5634  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BD5638  7C 80 07 35 */	extsh. r0, r4
/* 80BD563C  40 81 00 08 */	ble lbl_80BD5644
/* 80BD5640  4B 6F 96 FC */	b __dl__FPv
lbl_80BD5644:
/* 80BD5644  7F E3 FB 78 */	mr r3, r31
/* 80BD5648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD564C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5650  7C 08 03 A6 */	mtlr r0
/* 80BD5654  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5658  4E 80 00 20 */	blr 
