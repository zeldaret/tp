lbl_8024A6EC:
/* 8024A6EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024A6F0  7C 08 02 A6 */	mflr r0
/* 8024A6F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024A6F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A6FC  48 11 7A DD */	bl _savegpr_28
/* 8024A700  7C 9C 23 78 */	mr r28, r4
/* 8024A704  80 02 D1 A0 */	lwz r0, lit_4765(r2)
/* 8024A708  90 01 00 08 */	stw r0, 8(r1)
/* 8024A70C  88 02 D1 A4 */	lbz r0, data_80456BA4(r2)
/* 8024A710  98 01 00 0C */	stb r0, 0xc(r1)
/* 8024A714  4B FE DA 61 */	bl getMsgDtPtr__12dMsgObject_cFv
/* 8024A718  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8024A71C  3B A0 00 00 */	li r29, 0
/* 8024A720  3B E3 00 20 */	addi r31, r3, 0x20
/* 8024A724  48 00 00 3C */	b lbl_8024A760
lbl_8024A728:
/* 8024A728  38 61 00 08 */	addi r3, r1, 8
/* 8024A72C  7F E4 FB 78 */	mr r4, r31
/* 8024A730  38 A0 00 04 */	li r5, 4
/* 8024A734  4B DB 8E 0D */	bl memcpy
/* 8024A738  38 61 00 08 */	addi r3, r1, 8
/* 8024A73C  7F 84 E3 78 */	mr r4, r28
/* 8024A740  48 11 E2 55 */	bl strcmp
/* 8024A744  2C 03 00 00 */	cmpwi r3, 0
/* 8024A748  40 82 00 0C */	bne lbl_8024A754
/* 8024A74C  7F E3 FB 78 */	mr r3, r31
/* 8024A750  48 00 00 1C */	b lbl_8024A76C
lbl_8024A754:
/* 8024A754  80 1F 00 04 */	lwz r0, 4(r31)
/* 8024A758  7F FF 02 14 */	add r31, r31, r0
/* 8024A75C  3B BD 00 01 */	addi r29, r29, 1
lbl_8024A760:
/* 8024A760  7C 1D F0 40 */	cmplw r29, r30
/* 8024A764  41 80 FF C4 */	blt lbl_8024A728
/* 8024A768  38 60 00 00 */	li r3, 0
lbl_8024A76C:
/* 8024A76C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A770  48 11 7A B5 */	bl _restgpr_28
/* 8024A774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024A778  7C 08 03 A6 */	mtlr r0
/* 8024A77C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024A780  4E 80 00 20 */	blr 
