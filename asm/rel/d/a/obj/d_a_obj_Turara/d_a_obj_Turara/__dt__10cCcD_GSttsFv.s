lbl_80B9E56C:
/* 80B9E56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E570  7C 08 02 A6 */	mflr r0
/* 80B9E574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E57C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9E580  41 82 00 1C */	beq lbl_80B9E59C
/* 80B9E584  3C A0 80 BA */	lis r5, __vt__10cCcD_GStts@ha
/* 80B9E588  38 05 EA A8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B9E58C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9E590  7C 80 07 35 */	extsh. r0, r4
/* 80B9E594  40 81 00 08 */	ble lbl_80B9E59C
/* 80B9E598  4B 73 07 A4 */	b __dl__FPv
lbl_80B9E59C:
/* 80B9E59C  7F E3 FB 78 */	mr r3, r31
/* 80B9E5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E5A8  7C 08 03 A6 */	mtlr r0
/* 80B9E5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E5B0  4E 80 00 20 */	blr 
