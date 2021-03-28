lbl_8024A7CC:
/* 8024A7CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024A7D0  7C 08 02 A6 */	mflr r0
/* 8024A7D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024A7D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8024A7DC  48 11 79 F9 */	bl _savegpr_27
/* 8024A7E0  7C 7D 1B 78 */	mr r29, r3
/* 8024A7E4  7C 9E 23 78 */	mr r30, r4
/* 8024A7E8  7C BF 2B 78 */	mr r31, r5
/* 8024A7EC  3B 60 00 00 */	li r27, 0
/* 8024A7F0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024A7F4  3C 03 00 01 */	addis r0, r3, 1
/* 8024A7F8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A7FC  41 82 00 0C */	beq lbl_8024A808
/* 8024A800  4B DD 52 25 */	bl fopMsgM_SearchByID__FUi
/* 8024A804  7C 7B 1B 78 */	mr r27, r3
lbl_8024A808:
/* 8024A808  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8024A80C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A810  40 82 00 24 */	bne lbl_8024A834
/* 8024A814  28 1B 00 00 */	cmplwi r27, 0
/* 8024A818  41 82 00 0C */	beq lbl_8024A824
/* 8024A81C  38 00 00 10 */	li r0, 0x10
/* 8024A820  B0 1B 00 F8 */	sth r0, 0xf8(r27)
lbl_8024A824:
/* 8024A824  4B FE D8 75 */	bl endFlowGroup__12dMsgObject_cFv
/* 8024A828  38 00 00 01 */	li r0, 1
/* 8024A82C  98 1D 00 26 */	stb r0, 0x26(r29)
/* 8024A830  48 00 01 10 */	b lbl_8024A940
lbl_8024A834:
/* 8024A834  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8024A838  57 C0 1B 78 */	rlwinm r0, r30, 3, 0xd, 0x1c
/* 8024A83C  7F 83 02 14 */	add r28, r3, r0
/* 8024A840  88 1C 00 00 */	lbz r0, 0(r28)
/* 8024A844  2C 00 00 02 */	cmpwi r0, 2
/* 8024A848  41 82 00 F8 */	beq lbl_8024A940
/* 8024A84C  40 80 00 14 */	bge lbl_8024A860
/* 8024A850  2C 00 00 00 */	cmpwi r0, 0
/* 8024A854  41 82 00 EC */	beq lbl_8024A940
/* 8024A858  40 80 00 14 */	bge lbl_8024A86C
/* 8024A85C  48 00 00 E4 */	b lbl_8024A940
lbl_8024A860:
/* 8024A860  2C 00 00 04 */	cmpwi r0, 4
/* 8024A864  40 80 00 DC */	bge lbl_8024A940
/* 8024A868  48 00 00 10 */	b lbl_8024A878
lbl_8024A86C:
/* 8024A86C  38 00 00 01 */	li r0, 1
/* 8024A870  98 1D 00 25 */	stb r0, 0x25(r29)
/* 8024A874  48 00 00 CC */	b lbl_8024A940
lbl_8024A878:
/* 8024A878  88 1C 00 01 */	lbz r0, 1(r28)
/* 8024A87C  28 00 00 15 */	cmplwi r0, 0x15
/* 8024A880  41 82 00 14 */	beq lbl_8024A894
/* 8024A884  28 00 00 20 */	cmplwi r0, 0x20
/* 8024A888  41 82 00 0C */	beq lbl_8024A894
/* 8024A88C  28 00 00 21 */	cmplwi r0, 0x21
/* 8024A890  40 82 00 5C */	bne lbl_8024A8EC
lbl_8024A894:
/* 8024A894  28 00 00 15 */	cmplwi r0, 0x15
/* 8024A898  40 82 00 18 */	bne lbl_8024A8B0
/* 8024A89C  7F A3 EB 78 */	mr r3, r29
/* 8024A8A0  38 9C 00 04 */	addi r4, r28, 4
/* 8024A8A4  48 00 08 8D */	bl getParam__10dMsgFlow_cFPUc
/* 8024A8A8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8024A8AC  48 00 00 24 */	b lbl_8024A8D0
lbl_8024A8B0:
/* 8024A8B0  7F A3 EB 78 */	mr r3, r29
/* 8024A8B4  38 81 00 0C */	addi r4, r1, 0xc
/* 8024A8B8  38 A1 00 0E */	addi r5, r1, 0xe
/* 8024A8BC  38 DC 00 04 */	addi r6, r28, 4
/* 8024A8C0  48 00 08 31 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024A8C4  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 8024A8C8  38 03 00 01 */	addi r0, r3, 1
/* 8024A8CC  90 1D 00 3C */	stw r0, 0x3c(r29)
lbl_8024A8D0:
/* 8024A8D0  28 1B 00 00 */	cmplwi r27, 0
/* 8024A8D4  41 82 00 10 */	beq lbl_8024A8E4
/* 8024A8D8  38 00 00 10 */	li r0, 0x10
/* 8024A8DC  B0 1B 00 F8 */	sth r0, 0xf8(r27)
/* 8024A8E0  4B FE D7 B9 */	bl endFlowGroup__12dMsgObject_cFv
lbl_8024A8E4:
/* 8024A8E4  38 00 00 01 */	li r0, 1
/* 8024A8E8  98 1D 00 27 */	stb r0, 0x27(r29)
lbl_8024A8EC:
/* 8024A8EC  88 1C 00 01 */	lbz r0, 1(r28)
/* 8024A8F0  28 00 00 09 */	cmplwi r0, 9
/* 8024A8F4  40 82 00 10 */	bne lbl_8024A904
/* 8024A8F8  38 00 00 01 */	li r0, 1
/* 8024A8FC  98 1D 00 27 */	stb r0, 0x27(r29)
/* 8024A900  48 00 00 40 */	b lbl_8024A940
lbl_8024A904:
/* 8024A904  28 00 00 13 */	cmplwi r0, 0x13
/* 8024A908  40 82 00 38 */	bne lbl_8024A940
/* 8024A90C  7F A3 EB 78 */	mr r3, r29
/* 8024A910  38 81 00 08 */	addi r4, r1, 8
/* 8024A914  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024A918  38 DC 00 04 */	addi r6, r28, 4
/* 8024A91C  48 00 07 D5 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024A920  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024A924  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 8024A928  28 1F 00 00 */	cmplwi r31, 0
/* 8024A92C  41 82 00 14 */	beq lbl_8024A940
/* 8024A930  A0 1D 00 38 */	lhz r0, 0x38(r29)
/* 8024A934  54 00 10 3A */	slwi r0, r0, 2
/* 8024A938  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8024A93C  4B FE D1 39 */	bl setTalkPartner__12dMsgObject_cFP10fopAc_ac_c
lbl_8024A940:
/* 8024A940  B3 DD 00 10 */	sth r30, 0x10(r29)
/* 8024A944  39 61 00 30 */	addi r11, r1, 0x30
/* 8024A948  48 11 78 D9 */	bl _restgpr_27
/* 8024A94C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024A950  7C 08 03 A6 */	mtlr r0
/* 8024A954  38 21 00 30 */	addi r1, r1, 0x30
/* 8024A958  4E 80 00 20 */	blr 
