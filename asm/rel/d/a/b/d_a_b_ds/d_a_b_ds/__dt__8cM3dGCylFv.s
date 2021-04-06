lbl_805DC4CC:
/* 805DC4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC4D0  7C 08 02 A6 */	mflr r0
/* 805DC4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC4DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC4E0  41 82 00 1C */	beq lbl_805DC4FC
/* 805DC4E4  3C A0 80 5E */	lis r5, __vt__8cM3dGCyl@ha /* 0x805DDA08@ha */
/* 805DC4E8  38 05 DA 08 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x805DDA08@l */
/* 805DC4EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805DC4F0  7C 80 07 35 */	extsh. r0, r4
/* 805DC4F4  40 81 00 08 */	ble lbl_805DC4FC
/* 805DC4F8  4B CF 28 45 */	bl __dl__FPv
lbl_805DC4FC:
/* 805DC4FC  7F E3 FB 78 */	mr r3, r31
/* 805DC500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC508  7C 08 03 A6 */	mtlr r0
/* 805DC50C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC510  4E 80 00 20 */	blr 
