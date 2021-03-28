lbl_8024E408:
/* 8024E408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024E40C  7C 08 02 A6 */	mflr r0
/* 8024E410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024E414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024E418  7C 7F 1B 78 */	mr r31, r3
/* 8024E41C  3C A0 80 3C */	lis r5, __vt__7dName_c@ha
/* 8024E420  38 05 2B 64 */	addi r0, r5, __vt__7dName_c@l
/* 8024E424  90 03 00 00 */	stw r0, 0(r3)
/* 8024E428  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha
/* 8024E42C  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l
/* 8024E430  90 03 00 0C */	stw r0, 0xc(r3)
/* 8024E434  3C A0 80 3C */	lis r5, __vt__14dDlst_NameIN_c@ha
/* 8024E438  38 05 2B 38 */	addi r0, r5, __vt__14dDlst_NameIN_c@l
/* 8024E43C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8024E440  90 83 00 18 */	stw r4, 0x18(r3)
/* 8024E444  48 00 01 E9 */	bl _create__7dName_cFv
/* 8024E448  7F E3 FB 78 */	mr r3, r31
/* 8024E44C  48 00 02 89 */	bl init__7dName_cFv
/* 8024E450  7F E3 FB 78 */	mr r3, r31
/* 8024E454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024E458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024E45C  7C 08 03 A6 */	mtlr r0
/* 8024E460  38 21 00 10 */	addi r1, r1, 0x10
/* 8024E464  4E 80 00 20 */	blr 
