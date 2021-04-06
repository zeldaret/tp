lbl_8050B53C:
/* 8050B53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B540  7C 08 02 A6 */	mflr r0
/* 8050B544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B54C  93 C1 00 08 */	stw r30, 8(r1)
/* 8050B550  7C 7E 1B 79 */	or. r30, r3, r3
/* 8050B554  7C 9F 23 78 */	mr r31, r4
/* 8050B558  41 82 00 40 */	beq lbl_8050B598
/* 8050B55C  3C 80 80 52 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 8050B560  38 84 90 F8 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 8050B564  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8050B568  38 04 00 0C */	addi r0, r4, 0xc
/* 8050B56C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8050B570  38 04 00 18 */	addi r0, r4, 0x18
/* 8050B574  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8050B578  38 04 00 24 */	addi r0, r4, 0x24
/* 8050B57C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8050B580  38 80 00 00 */	li r4, 0
/* 8050B584  4B B6 C0 6D */	bl __dt__11dBgS_GndChkFv
/* 8050B588  7F E0 07 35 */	extsh. r0, r31
/* 8050B58C  40 81 00 0C */	ble lbl_8050B598
/* 8050B590  7F C3 F3 78 */	mr r3, r30
/* 8050B594  4B DC 37 A9 */	bl __dl__FPv
lbl_8050B598:
/* 8050B598  7F C3 F3 78 */	mr r3, r30
/* 8050B59C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B5A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050B5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B5A8  7C 08 03 A6 */	mtlr r0
/* 8050B5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B5B0  4E 80 00 20 */	blr 
