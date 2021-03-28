lbl_8082E2FC:
/* 8082E2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082E300  7C 08 02 A6 */	mflr r0
/* 8082E304  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082E30C  7C 7F 1B 78 */	mr r31, r3
/* 8082E310  88 03 07 AE */	lbz r0, 0x7ae(r3)
/* 8082E314  28 00 00 00 */	cmplwi r0, 0
/* 8082E318  41 82 00 0C */	beq lbl_8082E324
/* 8082E31C  38 60 00 01 */	li r3, 1
/* 8082E320  48 00 00 8C */	b lbl_8082E3AC
lbl_8082E324:
/* 8082E324  38 60 00 00 */	li r3, 0
/* 8082E328  38 00 00 02 */	li r0, 2
/* 8082E32C  7C 09 03 A6 */	mtctr r0
lbl_8082E330:
/* 8082E330  38 A3 07 94 */	addi r5, r3, 0x794
/* 8082E334  7C 9F 28 2E */	lwzx r4, r31, r5
/* 8082E338  2C 04 00 00 */	cmpwi r4, 0
/* 8082E33C  41 82 00 0C */	beq lbl_8082E348
/* 8082E340  38 04 FF FF */	addi r0, r4, -1
/* 8082E344  7C 1F 29 2E */	stwx r0, r31, r5
lbl_8082E348:
/* 8082E348  38 63 00 04 */	addi r3, r3, 4
/* 8082E34C  42 00 FF E4 */	bdnz lbl_8082E330
/* 8082E350  88 7F 07 A8 */	lbz r3, 0x7a8(r31)
/* 8082E354  28 03 00 00 */	cmplwi r3, 0
/* 8082E358  41 82 00 0C */	beq lbl_8082E364
/* 8082E35C  38 03 FF FF */	addi r0, r3, -1
/* 8082E360  98 1F 07 A8 */	stb r0, 0x7a8(r31)
lbl_8082E364:
/* 8082E364  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 8082E368  2C 03 00 00 */	cmpwi r3, 0
/* 8082E36C  41 82 00 0C */	beq lbl_8082E378
/* 8082E370  38 03 FF FF */	addi r0, r3, -1
/* 8082E374  90 1F 07 A0 */	stw r0, 0x7a0(r31)
lbl_8082E378:
/* 8082E378  88 1F 07 AB */	lbz r0, 0x7ab(r31)
/* 8082E37C  28 00 00 02 */	cmplwi r0, 2
/* 8082E380  40 82 00 10 */	bne lbl_8082E390
/* 8082E384  7F E3 FB 78 */	mr r3, r31
/* 8082E388  4B FF F7 DD */	bl tagAction__8daE_ZH_cFv
/* 8082E38C  48 00 00 1C */	b lbl_8082E3A8
lbl_8082E390:
/* 8082E390  7F E3 FB 78 */	mr r3, r31
/* 8082E394  4B FF F7 F1 */	bl action__8daE_ZH_cFv
/* 8082E398  7F E3 FB 78 */	mr r3, r31
/* 8082E39C  4B FF FA 7D */	bl mtx_set__8daE_ZH_cFv
/* 8082E3A0  7F E3 FB 78 */	mr r3, r31
/* 8082E3A4  4B FF FB A1 */	bl cc_set__8daE_ZH_cFv
lbl_8082E3A8:
/* 8082E3A8  38 60 00 01 */	li r3, 1
lbl_8082E3AC:
/* 8082E3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082E3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082E3B4  7C 08 03 A6 */	mtlr r0
/* 8082E3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8082E3BC  4E 80 00 20 */	blr 
