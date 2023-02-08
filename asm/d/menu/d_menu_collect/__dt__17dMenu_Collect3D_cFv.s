lbl_801B6538:
/* 801B6538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B653C  7C 08 02 A6 */	mflr r0
/* 801B6540  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B6544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B6548  93 C1 00 08 */	stw r30, 8(r1)
/* 801B654C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B6550  7C 9F 23 78 */	mr r31, r4
/* 801B6554  41 82 00 38 */	beq lbl_801B658C
/* 801B6558  3C 60 80 3C */	lis r3, __vt__17dMenu_Collect3D_c@ha /* 0x803BC790@ha */
/* 801B655C  38 03 C7 90 */	addi r0, r3, __vt__17dMenu_Collect3D_c@l /* 0x803BC790@l */
/* 801B6560  90 1E 00 00 */	stw r0, 0(r30)
/* 801B6564  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B6568  28 03 00 00 */	cmplwi r3, 0
/* 801B656C  41 82 00 10 */	beq lbl_801B657C
/* 801B6570  4B E5 8C 1D */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 801B6574  38 00 00 00 */	li r0, 0
/* 801B6578  90 1E 00 08 */	stw r0, 8(r30)
lbl_801B657C:
/* 801B657C  7F E0 07 35 */	extsh. r0, r31
/* 801B6580  40 81 00 0C */	ble lbl_801B658C
/* 801B6584  7F C3 F3 78 */	mr r3, r30
/* 801B6588  48 11 87 B5 */	bl __dl__FPv
lbl_801B658C:
/* 801B658C  7F C3 F3 78 */	mr r3, r30
/* 801B6590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B6594  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B6598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B659C  7C 08 03 A6 */	mtlr r0
/* 801B65A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B65A4  4E 80 00 20 */	blr 
