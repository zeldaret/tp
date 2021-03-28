lbl_8024A4C4:
/* 8024A4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024A4C8  7C 08 02 A6 */	mflr r0
/* 8024A4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024A4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024A4D4  7C 7F 1B 78 */	mr r31, r3
/* 8024A4D8  38 00 00 00 */	li r0, 0
/* 8024A4DC  98 03 00 27 */	stb r0, 0x27(r3)
/* 8024A4E0  38 00 00 01 */	li r0, 1
/* 8024A4E4  98 03 00 26 */	stb r0, 0x26(r3)
/* 8024A4E8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024A4EC  4B DD 55 39 */	bl fopMsgM_SearchByID__FUi
/* 8024A4F0  28 03 00 00 */	cmplwi r3, 0
/* 8024A4F4  41 82 00 10 */	beq lbl_8024A504
/* 8024A4F8  4B FE D4 9D */	bl onKillMessageFlag__12dMsgObject_cFv
/* 8024A4FC  38 00 FF FF */	li r0, -1
/* 8024A500  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_8024A504:
/* 8024A504  38 60 00 00 */	li r3, 0
/* 8024A508  4B F1 54 4D */	bl setMidnaMotionNum__9daPy_py_cFi
/* 8024A50C  38 60 00 00 */	li r3, 0
/* 8024A510  4B F1 54 59 */	bl setMidnaFaceNum__9daPy_py_cFi
/* 8024A514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024A518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024A51C  7C 08 03 A6 */	mtlr r0
/* 8024A520  38 21 00 10 */	addi r1, r1, 0x10
/* 8024A524  4E 80 00 20 */	blr 
