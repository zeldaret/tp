lbl_80BC9540:
/* 80BC9540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9544  7C 08 02 A6 */	mflr r0
/* 80BC9548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC954C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC9550  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC9554  41 82 00 1C */	beq lbl_80BC9570
/* 80BC9558  3C A0 80 BD */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BCA1A4@ha */
/* 80BC955C  38 05 A1 A4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BCA1A4@l */
/* 80BC9560  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC9564  7C 80 07 35 */	extsh. r0, r4
/* 80BC9568  40 81 00 08 */	ble lbl_80BC9570
/* 80BC956C  4B 70 57 D1 */	bl __dl__FPv
lbl_80BC9570:
/* 80BC9570  7F E3 FB 78 */	mr r3, r31
/* 80BC9574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC9578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC957C  7C 08 03 A6 */	mtlr r0
/* 80BC9580  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9584  4E 80 00 20 */	blr 
