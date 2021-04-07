lbl_80CD7420:
/* 80CD7420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7424  7C 08 02 A6 */	mflr r0
/* 80CD7428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD742C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7430  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD7434  41 82 00 1C */	beq lbl_80CD7450
/* 80CD7438  3C A0 80 CE */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CD8490@ha */
/* 80CD743C  38 05 84 90 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CD8490@l */
/* 80CD7440  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CD7444  7C 80 07 35 */	extsh. r0, r4
/* 80CD7448  40 81 00 08 */	ble lbl_80CD7450
/* 80CD744C  4B 5F 78 F1 */	bl __dl__FPv
lbl_80CD7450:
/* 80CD7450  7F E3 FB 78 */	mr r3, r31
/* 80CD7454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD745C  7C 08 03 A6 */	mtlr r0
/* 80CD7460  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7464  4E 80 00 20 */	blr 
