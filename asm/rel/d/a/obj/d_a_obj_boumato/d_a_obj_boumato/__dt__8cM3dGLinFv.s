lbl_80BBB55C:
/* 80BBB55C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB560  7C 08 02 A6 */	mflr r0
/* 80BBB564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB56C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBB570  41 82 00 1C */	beq lbl_80BBB58C
/* 80BBB574  3C A0 80 BC */	lis r5, __vt__8cM3dGLin@ha
/* 80BBB578  38 05 C6 48 */	addi r0, r5, __vt__8cM3dGLin@l
/* 80BBB57C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BBB580  7C 80 07 35 */	extsh. r0, r4
/* 80BBB584  40 81 00 08 */	ble lbl_80BBB58C
/* 80BBB588  4B 71 37 B4 */	b __dl__FPv
lbl_80BBB58C:
/* 80BBB58C  7F E3 FB 78 */	mr r3, r31
/* 80BBB590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB598  7C 08 03 A6 */	mtlr r0
/* 80BBB59C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB5A0  4E 80 00 20 */	blr 
