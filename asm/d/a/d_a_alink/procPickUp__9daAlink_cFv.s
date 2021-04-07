lbl_800E7460:
/* 800E7460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7464  7C 08 02 A6 */	mflr r0
/* 800E7468  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E746C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E7470  93 C1 00 08 */	stw r30, 8(r1)
/* 800E7474  7C 7F 1B 78 */	mr r31, r3
/* 800E7478  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 800E747C  2C 00 00 00 */	cmpwi r0, 0
/* 800E7480  40 82 00 28 */	bne lbl_800E74A8
/* 800E7484  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800E7488  28 00 00 00 */	cmplwi r0, 0
/* 800E748C  40 82 00 1C */	bne lbl_800E74A8
/* 800E7490  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800E7494  28 00 00 00 */	cmplwi r0, 0
/* 800E7498  40 82 00 10 */	bne lbl_800E74A8
/* 800E749C  38 80 00 00 */	li r4, 0
/* 800E74A0  4B FD 2C 31 */	bl checkNextAction__9daAlink_cFi
/* 800E74A4  48 00 01 30 */	b lbl_800E75D4
lbl_800E74A8:
/* 800E74A8  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800E74AC  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E74B0  2C 00 00 00 */	cmpwi r0, 0
/* 800E74B4  41 82 00 80 */	beq lbl_800E7534
/* 800E74B8  7F C3 F3 78 */	mr r3, r30
/* 800E74BC  48 07 70 11 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E74C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E74C4  41 82 00 30 */	beq lbl_800E74F4
/* 800E74C8  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800E74CC  2C 00 00 00 */	cmpwi r0, 0
/* 800E74D0  41 82 00 14 */	beq lbl_800E74E4
/* 800E74D4  7F E3 FB 78 */	mr r3, r31
/* 800E74D8  38 80 00 00 */	li r4, 0
/* 800E74DC  48 02 8D F5 */	bl procBottleGetInit__9daAlink_cFi
/* 800E74E0  48 00 00 F0 */	b lbl_800E75D0
lbl_800E74E4:
/* 800E74E4  7F E3 FB 78 */	mr r3, r31
/* 800E74E8  38 80 00 00 */	li r4, 0
/* 800E74EC  4B FD 2B E5 */	bl checkNextAction__9daAlink_cFi
/* 800E74F0  48 00 00 E0 */	b lbl_800E75D0
lbl_800E74F4:
/* 800E74F4  7F C3 F3 78 */	mr r3, r30
/* 800E74F8  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800E74FC  48 24 0F 31 */	bl checkPass__12J3DFrameCtrlFf
/* 800E7500  2C 03 00 00 */	cmpwi r3, 0
/* 800E7504  41 82 00 CC */	beq lbl_800E75D0
/* 800E7508  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800E750C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800E7510  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800E7514  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800E7518  2C 00 00 00 */	cmpwi r0, 0
/* 800E751C  41 82 00 B4 */	beq lbl_800E75D0
/* 800E7520  38 00 00 48 */	li r0, 0x48
/* 800E7524  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800E7528  7F E3 FB 78 */	mr r3, r31
/* 800E752C  48 02 99 59 */	bl setKandelaarModel__9daAlink_cFv
/* 800E7530  48 00 00 A0 */	b lbl_800E75D0
lbl_800E7534:
/* 800E7534  7F C3 F3 78 */	mr r3, r30
/* 800E7538  48 07 6F 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E753C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E7540  41 82 00 14 */	beq lbl_800E7554
/* 800E7544  7F E3 FB 78 */	mr r3, r31
/* 800E7548  38 80 00 00 */	li r4, 0
/* 800E754C  4B FD 2B 85 */	bl checkNextAction__9daAlink_cFi
/* 800E7550  48 00 00 80 */	b lbl_800E75D0
lbl_800E7554:
/* 800E7554  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800E7558  3C 60 80 39 */	lis r3, m__20daAlinkHIO_pickUp_c0@ha /* 0x8038E840@ha */
/* 800E755C  38 63 E8 40 */	addi r3, r3, m__20daAlinkHIO_pickUp_c0@l /* 0x8038E840@l */
/* 800E7560  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800E7564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7568  40 81 00 20 */	ble lbl_800E7588
/* 800E756C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E7570  60 00 00 04 */	ori r0, r0, 4
/* 800E7574  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800E7578  7F E3 FB 78 */	mr r3, r31
/* 800E757C  38 80 00 01 */	li r4, 1
/* 800E7580  4B FD 2B 51 */	bl checkNextAction__9daAlink_cFi
/* 800E7584  48 00 00 4C */	b lbl_800E75D0
lbl_800E7588:
/* 800E7588  7F C3 F3 78 */	mr r3, r30
/* 800E758C  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 800E7590  48 24 0E 9D */	bl checkPass__12J3DFrameCtrlFf
/* 800E7594  2C 03 00 00 */	cmpwi r3, 0
/* 800E7598  41 82 00 38 */	beq lbl_800E75D0
/* 800E759C  38 00 01 02 */	li r0, 0x102
/* 800E75A0  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800E75A4  80 1F 28 2C */	lwz r0, 0x282c(r31)
/* 800E75A8  90 1F 28 24 */	stw r0, 0x2824(r31)
/* 800E75AC  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800E75B0  90 1F 28 28 */	stw r0, 0x2828(r31)
/* 800E75B4  38 7F 28 2C */	addi r3, r31, 0x282c
/* 800E75B8  48 07 77 45 */	bl clearData__16daPy_actorKeep_cFv
/* 800E75BC  38 00 00 03 */	li r0, 3
/* 800E75C0  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800E75C4  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800E75C8  60 00 80 00 */	ori r0, r0, 0x8000
/* 800E75CC  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_800E75D0:
/* 800E75D0  38 60 00 01 */	li r3, 1
lbl_800E75D4:
/* 800E75D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E75D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E75DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E75E0  7C 08 03 A6 */	mtlr r0
/* 800E75E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E75E8  4E 80 00 20 */	blr 
