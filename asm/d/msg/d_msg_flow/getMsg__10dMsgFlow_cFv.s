lbl_8024A548:
/* 8024A548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024A54C  7C 08 02 A6 */	mflr r0
/* 8024A550  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024A554  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024A558  3C 03 00 01 */	addis r0, r3, 1
/* 8024A55C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A560  41 82 00 0C */	beq lbl_8024A56C
/* 8024A564  4B DD 54 C1 */	bl fopMsgM_SearchByID__FUi
/* 8024A568  48 00 00 08 */	b lbl_8024A570
lbl_8024A56C:
/* 8024A56C  38 60 00 00 */	li r3, 0
lbl_8024A570:
/* 8024A570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024A574  7C 08 03 A6 */	mtlr r0
/* 8024A578  38 21 00 10 */	addi r1, r1, 0x10
/* 8024A57C  4E 80 00 20 */	blr 
