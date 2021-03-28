lbl_800DB418:
/* 800DB418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DB41C  7C 08 02 A6 */	mflr r0
/* 800DB420  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DB424  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DB428  7C 7F 1B 78 */	mr r31, r3
/* 800DB42C  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200AC@ha */
/* 800DB430  38 84 00 AC */	addi r4, r4, 0x00AC /* 0x000200AC@l */
/* 800DB434  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800DB438  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 800DB43C  7D 89 03 A6 */	mtctr r12
/* 800DB440  4E 80 04 21 */	bctrl 
/* 800DB444  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DB448  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800DB44C  41 82 00 30 */	beq lbl_800DB47C
/* 800DB450  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 800DB454  28 00 00 0F */	cmplwi r0, 0xf
/* 800DB458  41 82 00 24 */	beq lbl_800DB47C
/* 800DB45C  38 00 00 07 */	li r0, 7
/* 800DB460  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800DB464  38 7F 30 80 */	addi r3, r31, 0x3080
/* 800DB468  38 80 00 00 */	li r4, 0
/* 800DB46C  38 A0 00 04 */	li r5, 4
/* 800DB470  38 C0 0C 00 */	li r6, 0xc00
/* 800DB474  38 E0 01 80 */	li r7, 0x180
/* 800DB478  48 08 45 05 */	bl daPy_addCalcShort__FPsssss
lbl_800DB47C:
/* 800DB47C  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800DB480  2C 00 00 00 */	cmpwi r0, 0
/* 800DB484  41 82 00 40 */	beq lbl_800DB4C4
/* 800DB488  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DB48C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DB490  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DB494  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DB498  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DB49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB4A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB4A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DB4A8  38 80 00 05 */	li r4, 5
/* 800DB4AC  38 A0 00 01 */	li r5, 1
/* 800DB4B0  38 C1 00 08 */	addi r6, r1, 8
/* 800DB4B4  4B F9 46 5D */	bl StartQuake__12dVibration_cFii4cXyz
/* 800DB4B8  A8 7F 30 0E */	lha r3, 0x300e(r31)
/* 800DB4BC  38 03 FF FF */	addi r0, r3, -1
/* 800DB4C0  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800DB4C4:
/* 800DB4C4  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800DB4C8  2C 03 00 00 */	cmpwi r3, 0
/* 800DB4CC  41 82 00 10 */	beq lbl_800DB4DC
/* 800DB4D0  38 03 FF FF */	addi r0, r3, -1
/* 800DB4D4  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800DB4D8  48 00 00 C0 */	b lbl_800DB598
lbl_800DB4DC:
/* 800DB4DC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800DB4E0  2C 00 00 00 */	cmpwi r0, 0
/* 800DB4E4  41 82 00 0C */	beq lbl_800DB4F0
/* 800DB4E8  48 0A 61 59 */	bl dCam_getBody__Fv
/* 800DB4EC  48 08 5F C1 */	bl Start__9dCamera_cFv
lbl_800DB4F0:
/* 800DB4F0  7F E3 FB 78 */	mr r3, r31
/* 800DB4F4  48 03 C7 9D */	bl resetSpecialEvent__9daAlink_cFv
/* 800DB4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB500  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DB504  38 80 00 1F */	li r4, 0x1f
/* 800DB508  4B F9 48 8D */	bl StopQuake__12dVibration_cFi
/* 800DB50C  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800DB510  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800DB514  40 82 00 10 */	bne lbl_800DB524
/* 800DB518  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800DB51C  2C 00 00 00 */	cmpwi r0, 0
/* 800DB520  41 82 00 30 */	beq lbl_800DB550
lbl_800DB524:
/* 800DB524  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800DB528  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800DB52C  7F E3 FB 78 */	mr r3, r31
/* 800DB530  38 80 FF FF */	li r4, -1
/* 800DB534  38 A0 00 01 */	li r5, 1
/* 800DB538  38 C0 00 00 */	li r6, 0
/* 800DB53C  38 E0 00 00 */	li r7, 0
/* 800DB540  39 00 00 00 */	li r8, 0
/* 800DB544  39 20 00 02 */	li r9, 2
/* 800DB548  4B FF E1 95 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800DB54C  48 00 00 4C */	b lbl_800DB598
lbl_800DB550:
/* 800DB550  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800DB554  41 82 00 30 */	beq lbl_800DB584
/* 800DB558  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DB55C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DB560  41 82 00 14 */	beq lbl_800DB574
/* 800DB564  7F E3 FB 78 */	mr r3, r31
/* 800DB568  38 80 00 00 */	li r4, 0
/* 800DB56C  48 05 CF C1 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 800DB570  48 00 00 28 */	b lbl_800DB598
lbl_800DB574:
/* 800DB574  7F E3 FB 78 */	mr r3, r31
/* 800DB578  38 80 00 00 */	li r4, 0
/* 800DB57C  48 02 8D 7D */	bl procSwimWaitInit__9daAlink_cFi
/* 800DB580  48 00 00 18 */	b lbl_800DB598
lbl_800DB584:
/* 800DB584  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800DB588  28 00 01 42 */	cmplwi r0, 0x142
/* 800DB58C  40 82 00 0C */	bne lbl_800DB598
/* 800DB590  7F E3 FB 78 */	mr r3, r31
/* 800DB594  4B FD A3 59 */	bl checkWaitAction__9daAlink_cFv
lbl_800DB598:
/* 800DB598  38 60 00 01 */	li r3, 1
/* 800DB59C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DB5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DB5A4  7C 08 03 A6 */	mtlr r0
/* 800DB5A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DB5AC  4E 80 00 20 */	blr 
