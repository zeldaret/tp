lbl_8024A2D8:
/* 8024A2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024A2DC  7C 08 02 A6 */	mflr r0
/* 8024A2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024A2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A2E8  48 11 7E ED */	bl _savegpr_27
/* 8024A2EC  7C 7B 1B 78 */	mr r27, r3
/* 8024A2F0  7C 9C 23 78 */	mr r28, r4
/* 8024A2F4  7C BD 2B 78 */	mr r29, r5
/* 8024A2F8  3B E0 00 00 */	li r31, 0
/* 8024A2FC  54 DE 04 3E */	clrlwi r30, r6, 0x10
/* 8024A300  A0 63 00 1C */	lhz r3, 0x1c(r3)
/* 8024A304  4B FE DD 39 */	bl changeFlowGroup__12dMsgObject_cFl
/* 8024A308  4B FE D6 79 */	bl isKillMessageFlag__12dMsgObject_cFv
/* 8024A30C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024A310  41 82 00 14 */	beq lbl_8024A324
/* 8024A314  38 00 00 01 */	li r0, 1
/* 8024A318  98 1B 00 27 */	stb r0, 0x27(r27)
/* 8024A31C  98 1B 00 26 */	stb r0, 0x26(r27)
/* 8024A320  3B C0 00 00 */	li r30, 0
lbl_8024A324:
/* 8024A324  88 1B 00 26 */	lbz r0, 0x26(r27)
/* 8024A328  28 00 00 00 */	cmplwi r0, 0
/* 8024A32C  41 82 00 3C */	beq lbl_8024A368
/* 8024A330  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8024A334  41 82 00 34 */	beq lbl_8024A368
/* 8024A338  7F 63 DB 78 */	mr r3, r27
/* 8024A33C  38 80 00 00 */	li r4, 0
/* 8024A340  48 00 02 41 */	bl setInitValue__10dMsgFlow_cFi
/* 8024A344  B3 DB 00 1C */	sth r30, 0x1c(r27)
/* 8024A348  7F 63 DB 78 */	mr r3, r27
/* 8024A34C  A0 9B 00 1C */	lhz r4, 0x1c(r27)
/* 8024A350  48 00 04 35 */	bl getInitNodeIndex__10dMsgFlow_cFUs
/* 8024A354  7C 64 1B 78 */	mr r4, r3
/* 8024A358  7F 63 DB 78 */	mr r3, r27
/* 8024A35C  7F A5 EB 78 */	mr r5, r29
/* 8024A360  48 00 04 6D */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024A364  3B E0 00 01 */	li r31, 1
lbl_8024A368:
/* 8024A368  88 1B 00 26 */	lbz r0, 0x26(r27)
/* 8024A36C  28 00 00 00 */	cmplwi r0, 0
/* 8024A370  40 82 00 10 */	bne lbl_8024A380
/* 8024A374  88 1B 00 27 */	lbz r0, 0x27(r27)
/* 8024A378  28 00 00 00 */	cmplwi r0, 0
/* 8024A37C  41 82 00 40 */	beq lbl_8024A3BC
lbl_8024A380:
/* 8024A380  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 8024A384  4B DD 56 A1 */	bl fopMsgM_SearchByID__FUi
/* 8024A388  28 03 00 00 */	cmplwi r3, 0
/* 8024A38C  41 82 00 28 */	beq lbl_8024A3B4
/* 8024A390  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8024A394  28 00 00 12 */	cmplwi r0, 0x12
/* 8024A398  41 82 00 0C */	beq lbl_8024A3A4
/* 8024A39C  38 60 00 00 */	li r3, 0
/* 8024A3A0  48 00 00 6C */	b lbl_8024A40C
lbl_8024A3A4:
/* 8024A3A4  38 00 00 13 */	li r0, 0x13
/* 8024A3A8  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 8024A3AC  38 00 FF FF */	li r0, -1
/* 8024A3B0  90 1B 00 20 */	stw r0, 0x20(r27)
lbl_8024A3B4:
/* 8024A3B4  38 00 00 00 */	li r0, 0
/* 8024A3B8  98 1B 00 27 */	stb r0, 0x27(r27)
lbl_8024A3BC:
/* 8024A3BC  88 1B 00 26 */	lbz r0, 0x26(r27)
/* 8024A3C0  28 00 00 00 */	cmplwi r0, 0
/* 8024A3C4  41 82 00 1C */	beq lbl_8024A3E0
/* 8024A3C8  38 60 00 00 */	li r3, 0
/* 8024A3CC  4B F1 55 89 */	bl setMidnaMotionNum__9daPy_py_cFi
/* 8024A3D0  38 60 00 00 */	li r3, 0
/* 8024A3D4  4B F1 55 95 */	bl setMidnaFaceNum__9daPy_py_cFi
/* 8024A3D8  38 60 00 01 */	li r3, 1
/* 8024A3DC  48 00 00 30 */	b lbl_8024A40C
lbl_8024A3E0:
/* 8024A3E0  7F 63 DB 78 */	mr r3, r27
/* 8024A3E4  7F 84 E3 78 */	mr r4, r28
/* 8024A3E8  7F A5 EB 78 */	mr r5, r29
/* 8024A3EC  48 00 0C 0D */	bl nodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c
/* 8024A3F0  38 00 00 00 */	li r0, 0
/* 8024A3F4  2C 03 00 00 */	cmpwi r3, 0
/* 8024A3F8  40 82 00 0C */	bne lbl_8024A404
/* 8024A3FC  2C 1F 00 00 */	cmpwi r31, 0
/* 8024A400  41 82 00 08 */	beq lbl_8024A408
lbl_8024A404:
/* 8024A404  38 00 00 01 */	li r0, 1
lbl_8024A408:
/* 8024A408  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8024A40C:
/* 8024A40C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A410  48 11 7E 11 */	bl _restgpr_27
/* 8024A414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024A418  7C 08 03 A6 */	mtlr r0
/* 8024A41C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024A420  4E 80 00 20 */	blr 
