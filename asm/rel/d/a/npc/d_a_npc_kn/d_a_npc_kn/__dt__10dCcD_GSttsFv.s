lbl_80A3C560:
/* 80A3C560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C564  7C 08 02 A6 */	mflr r0
/* 80A3C568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C570  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C574  41 82 00 30 */	beq lbl_80A3C5A4
/* 80A3C578  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A431E0@ha */
/* 80A3C57C  38 03 31 E0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A431E0@l */
/* 80A3C580  90 1F 00 00 */	stw r0, 0(r31)
/* 80A3C584  41 82 00 10 */	beq lbl_80A3C594
/* 80A3C588  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A431D4@ha */
/* 80A3C58C  38 03 31 D4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A431D4@l */
/* 80A3C590  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A3C594:
/* 80A3C594  7C 80 07 35 */	extsh. r0, r4
/* 80A3C598  40 81 00 0C */	ble lbl_80A3C5A4
/* 80A3C59C  7F E3 FB 78 */	mr r3, r31
/* 80A3C5A0  4B 89 27 9D */	bl __dl__FPv
lbl_80A3C5A4:
/* 80A3C5A4  7F E3 FB 78 */	mr r3, r31
/* 80A3C5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C5B0  7C 08 03 A6 */	mtlr r0
/* 80A3C5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C5B8  4E 80 00 20 */	blr 
