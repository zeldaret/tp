lbl_80B74570:
/* 80B74570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74574  7C 08 02 A6 */	mflr r0
/* 80B74578  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7457C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B74580  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B74584  41 82 00 30 */	beq lbl_80B745B4
/* 80B74588  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B74F00@ha */
/* 80B7458C  38 03 4F 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B74F00@l */
/* 80B74590  90 1F 00 00 */	stw r0, 0(r31)
/* 80B74594  41 82 00 10 */	beq lbl_80B745A4
/* 80B74598  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B74EF4@ha */
/* 80B7459C  38 03 4E F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B74EF4@l */
/* 80B745A0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B745A4:
/* 80B745A4  7C 80 07 35 */	extsh. r0, r4
/* 80B745A8  40 81 00 0C */	ble lbl_80B745B4
/* 80B745AC  7F E3 FB 78 */	mr r3, r31
/* 80B745B0  4B 75 A7 8D */	bl __dl__FPv
lbl_80B745B4:
/* 80B745B4  7F E3 FB 78 */	mr r3, r31
/* 80B745B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B745BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B745C0  7C 08 03 A6 */	mtlr r0
/* 80B745C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B745C8  4E 80 00 20 */	blr 
