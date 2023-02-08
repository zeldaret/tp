lbl_801B7A0C:
/* 801B7A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7A10  7C 08 02 A6 */	mflr r0
/* 801B7A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7A1C  7C 7F 1B 78 */	mr r31, r3
/* 801B7A20  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7A24  4B FF 84 81 */	bl _create__17dMenu_Collect2D_cFv
/* 801B7A28  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B7A2C  4B FF EB 7D */	bl _create__17dMenu_Collect3D_cFv
/* 801B7A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7A38  7C 08 03 A6 */	mtlr r0
/* 801B7A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7A40  4E 80 00 20 */	blr 
