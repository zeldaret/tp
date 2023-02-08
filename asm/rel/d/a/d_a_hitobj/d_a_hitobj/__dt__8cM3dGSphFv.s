lbl_8046B53C:
/* 8046B53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B540  7C 08 02 A6 */	mflr r0
/* 8046B544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046B54C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046B550  41 82 00 1C */	beq lbl_8046B56C
/* 8046B554  3C A0 80 47 */	lis r5, __vt__8cM3dGSph@ha /* 0x8046B66C@ha */
/* 8046B558  38 05 B6 6C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8046B66C@l */
/* 8046B55C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8046B560  7C 80 07 35 */	extsh. r0, r4
/* 8046B564  40 81 00 08 */	ble lbl_8046B56C
/* 8046B568  4B E6 37 D5 */	bl __dl__FPv
lbl_8046B56C:
/* 8046B56C  7F E3 FB 78 */	mr r3, r31
/* 8046B570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046B574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B578  7C 08 03 A6 */	mtlr r0
/* 8046B57C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B580  4E 80 00 20 */	blr 
