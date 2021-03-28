lbl_8024FDA0:
/* 8024FDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024FDA4  7C 08 02 A6 */	mflr r0
/* 8024FDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024FDAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024FDB0  7C 7F 1B 78 */	mr r31, r3
/* 8024FDB4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024FDB8  C0 22 B3 D0 */	lfs f1, lit_4009(r2)
/* 8024FDBC  4B F4 54 E5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8024FDC0  7F E3 FB 78 */	mr r3, r31
/* 8024FDC4  88 9F 02 B0 */	lbz r4, 0x2b0(r31)
/* 8024FDC8  48 00 12 81 */	bl getMenuPosIdx__7dName_cFUc
/* 8024FDCC  38 80 00 00 */	li r4, 0
/* 8024FDD0  54 60 10 3A */	slwi r0, r3, 2
/* 8024FDD4  7C 7F 02 14 */	add r3, r31, r0
/* 8024FDD8  80 63 02 84 */	lwz r3, 0x284(r3)
/* 8024FDDC  B0 83 00 64 */	sth r4, 0x64(r3)
/* 8024FDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024FDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024FDE8  7C 08 03 A6 */	mtlr r0
/* 8024FDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024FDF0  4E 80 00 20 */	blr 
