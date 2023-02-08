lbl_80C7A534:
/* 80C7A534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A538  7C 08 02 A6 */	mflr r0
/* 80C7A53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A544  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A548  41 82 00 1C */	beq lbl_80C7A564
/* 80C7A54C  3C A0 80 C8 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C7C9E0@ha */
/* 80C7A550  38 05 C9 E0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C7C9E0@l */
/* 80C7A554  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C7A558  7C 80 07 35 */	extsh. r0, r4
/* 80C7A55C  40 81 00 08 */	ble lbl_80C7A564
/* 80C7A560  4B 65 47 DD */	bl __dl__FPv
lbl_80C7A564:
/* 80C7A564  7F E3 FB 78 */	mr r3, r31
/* 80C7A568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A570  7C 08 03 A6 */	mtlr r0
/* 80C7A574  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A578  4E 80 00 20 */	blr 
