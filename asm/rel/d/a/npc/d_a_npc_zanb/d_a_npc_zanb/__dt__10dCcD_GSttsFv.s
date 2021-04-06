lbl_80B6B568:
/* 80B6B568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B56C  7C 08 02 A6 */	mflr r0
/* 80B6B570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B578  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6B57C  41 82 00 30 */	beq lbl_80B6B5AC
/* 80B6B580  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6BF84@ha */
/* 80B6B584  38 03 BF 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6BF84@l */
/* 80B6B588  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6B58C  41 82 00 10 */	beq lbl_80B6B59C
/* 80B6B590  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6BF78@ha */
/* 80B6B594  38 03 BF 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6BF78@l */
/* 80B6B598  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B6B59C:
/* 80B6B59C  7C 80 07 35 */	extsh. r0, r4
/* 80B6B5A0  40 81 00 0C */	ble lbl_80B6B5AC
/* 80B6B5A4  7F E3 FB 78 */	mr r3, r31
/* 80B6B5A8  4B 76 37 95 */	bl __dl__FPv
lbl_80B6B5AC:
/* 80B6B5AC  7F E3 FB 78 */	mr r3, r31
/* 80B6B5B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B5B8  7C 08 03 A6 */	mtlr r0
/* 80B6B5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B5C0  4E 80 00 20 */	blr 
