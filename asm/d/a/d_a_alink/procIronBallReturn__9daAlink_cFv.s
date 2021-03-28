lbl_80115AA0:
/* 80115AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115AA4  7C 08 02 A6 */	mflr r0
/* 80115AA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115AAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115AB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115AB4  7C 7F 1B 78 */	mr r31, r3
/* 80115AB8  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 80115ABC  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 80115AC0  28 00 00 42 */	cmplwi r0, 0x42
/* 80115AC4  41 82 00 0C */	beq lbl_80115AD0
/* 80115AC8  4B F9 FE 25 */	bl checkWaitAction__9daAlink_cFv
/* 80115ACC  48 00 01 3C */	b lbl_80115C08
lbl_80115AD0:
/* 80115AD0  38 00 00 04 */	li r0, 4
/* 80115AD4  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80115AD8  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80115ADC  2C 00 00 08 */	cmpwi r0, 8
/* 80115AE0  40 82 00 80 */	bne lbl_80115B60
/* 80115AE4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80115AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80115AEC  40 82 00 74 */	bne lbl_80115B60
/* 80115AF0  38 00 00 01 */	li r0, 1
/* 80115AF4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80115AF8  38 80 01 66 */	li r4, 0x166
/* 80115AFC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha
/* 80115B00  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l
/* 80115B04  4B F9 75 F1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80115B08  38 00 00 0C */	li r0, 0xc
/* 80115B0C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80115B10  7F E3 FB 78 */	mr r3, r31
/* 80115B14  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020034@ha */
/* 80115B18  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x00020034@l */
/* 80115B1C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80115B20  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80115B24  7D 89 03 A6 */	mtctr r12
/* 80115B28  4E 80 04 21 */	bctrl 
/* 80115B2C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80115B30  D0 21 00 08 */	stfs f1, 8(r1)
/* 80115B34  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80115B38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80115B3C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80115B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80115B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80115B48  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80115B4C  38 80 00 03 */	li r4, 3
/* 80115B50  38 A0 00 01 */	li r5, 1
/* 80115B54  38 C1 00 08 */	addi r6, r1, 8
/* 80115B58  4B F5 9E CD */	bl StartShock__12dVibration_cFii4cXyz
/* 80115B5C  48 00 00 A8 */	b lbl_80115C04
lbl_80115B60:
/* 80115B60  7F C3 F3 78 */	mr r3, r30
/* 80115B64  48 04 89 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80115B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115B6C  41 82 00 34 */	beq lbl_80115BA0
/* 80115B70  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80115B74  2C 00 00 08 */	cmpwi r0, 8
/* 80115B78  40 82 00 8C */	bne lbl_80115C04
/* 80115B7C  38 00 00 00 */	li r0, 0
/* 80115B80  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115B84  7F E3 FB 78 */	mr r3, r31
/* 80115B88  38 80 00 01 */	li r4, 1
/* 80115B8C  4B FF C9 DD */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 80115B90  7F E3 FB 78 */	mr r3, r31
/* 80115B94  38 80 00 00 */	li r4, 0
/* 80115B98  4B FA 45 39 */	bl checkNextAction__9daAlink_cFi
/* 80115B9C  48 00 00 68 */	b lbl_80115C04
lbl_80115BA0:
/* 80115BA0  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80115BA4  2C 00 00 08 */	cmpwi r0, 8
/* 80115BA8  40 82 00 5C */	bne lbl_80115C04
/* 80115BAC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80115BB0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_ironBall_c0@ha
/* 80115BB4  38 63 EA 70 */	addi r3, r3, m__22daAlinkHIO_ironBall_c0@l
/* 80115BB8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80115BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80115BC0  40 81 00 44 */	ble lbl_80115C04
/* 80115BC4  38 00 00 00 */	li r0, 0
/* 80115BC8  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115BCC  7F E3 FB 78 */	mr r3, r31
/* 80115BD0  38 80 00 01 */	li r4, 1
/* 80115BD4  4B FF C9 95 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 80115BD8  7F E3 FB 78 */	mr r3, r31
/* 80115BDC  38 80 00 01 */	li r4, 1
/* 80115BE0  4B FA 44 F1 */	bl checkNextAction__9daAlink_cFi
/* 80115BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80115BE8  40 82 00 1C */	bne lbl_80115C04
/* 80115BEC  38 00 00 08 */	li r0, 8
/* 80115BF0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115BF4  7F E3 FB 78 */	mr r3, r31
/* 80115BF8  38 80 00 02 */	li r4, 2
/* 80115BFC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80115C00  4B F9 7B 25 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80115C04:
/* 80115C04  38 60 00 01 */	li r3, 1
lbl_80115C08:
/* 80115C08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80115C0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80115C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115C14  7C 08 03 A6 */	mtlr r0
/* 80115C18  38 21 00 20 */	addi r1, r1, 0x20
/* 80115C1C  4E 80 00 20 */	blr 
