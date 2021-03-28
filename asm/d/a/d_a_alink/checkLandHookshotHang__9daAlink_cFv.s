lbl_8010B84C:
/* 8010B84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010B850  7C 08 02 A6 */	mflr r0
/* 8010B854  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010B858  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8010B85C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8010B860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010B864  7C 7F 1B 78 */	mr r31, r3
/* 8010B868  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 8010B86C  38 9F 38 34 */	addi r4, r31, 0x3834
/* 8010B870  48 15 C4 B9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8010B874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B87C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010B880  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 8010B884  4B F6 8C 1D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8010B888  FF E0 08 90 */	fmr f31, f1
/* 8010B88C  7F E3 FB 78 */	mr r3, r31
/* 8010B890  4B FF E0 01 */	bl setHookshotHangMoveBGCollect__9daAlink_cFv
/* 8010B894  2C 03 00 00 */	cmpwi r3, 0
/* 8010B898  41 82 00 1C */	beq lbl_8010B8B4
/* 8010B89C  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 8010B8A0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010B8A4  41 81 00 10 */	bgt lbl_8010B8B4
/* 8010B8A8  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 8010B8AC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010B8B0  40 81 00 10 */	ble lbl_8010B8C0
lbl_8010B8B4:
/* 8010B8B4  7F E3 FB 78 */	mr r3, r31
/* 8010B8B8  4B FF FE 69 */	bl checkNextHookPoint__9daAlink_cFv
/* 8010B8BC  48 00 00 94 */	b lbl_8010B950
lbl_8010B8C0:
/* 8010B8C0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8010B8C4  28 00 00 C9 */	cmplwi r0, 0xc9
/* 8010B8C8  41 82 00 84 */	beq lbl_8010B94C
/* 8010B8CC  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8010B8D0  41 82 00 0C */	beq lbl_8010B8DC
/* 8010B8D4  28 00 00 CB */	cmplwi r0, 0xcb
/* 8010B8D8  40 82 00 14 */	bne lbl_8010B8EC
lbl_8010B8DC:
/* 8010B8DC  7F E3 FB 78 */	mr r3, r31
/* 8010B8E0  4B FF D1 39 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010B8E4  2C 03 00 00 */	cmpwi r3, 0
/* 8010B8E8  41 82 00 64 */	beq lbl_8010B94C
lbl_8010B8EC:
/* 8010B8EC  7F E3 FB 78 */	mr r3, r31
/* 8010B8F0  4B FF CF B1 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010B8F4  2C 03 00 00 */	cmpwi r3, 0
/* 8010B8F8  41 82 00 10 */	beq lbl_8010B908
/* 8010B8FC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8010B900  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8010B904  40 82 00 48 */	bne lbl_8010B94C
lbl_8010B908:
/* 8010B908  7F E3 FB 78 */	mr r3, r31
/* 8010B90C  38 80 00 45 */	li r4, 0x45
/* 8010B910  4B FB 48 55 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010B914  2C 03 00 00 */	cmpwi r3, 0
/* 8010B918  41 82 00 34 */	beq lbl_8010B94C
/* 8010B91C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B924  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010B928  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8010B92C  41 82 00 14 */	beq lbl_8010B940
/* 8010B930  7F E3 FB 78 */	mr r3, r31
/* 8010B934  80 9F 28 58 */	lwz r4, 0x2858(r31)
/* 8010B938  48 00 16 35 */	bl procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c
/* 8010B93C  48 00 00 14 */	b lbl_8010B950
lbl_8010B940:
/* 8010B940  7F E3 FB 78 */	mr r3, r31
/* 8010B944  38 80 00 01 */	li r4, 1
/* 8010B948  4B FD 6C 39 */	bl setHeavyBoots__9daAlink_cFi
lbl_8010B94C:
/* 8010B94C  38 60 00 00 */	li r3, 0
lbl_8010B950:
/* 8010B950  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8010B954  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8010B958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010B95C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010B960  7C 08 03 A6 */	mtlr r0
/* 8010B964  38 21 00 20 */	addi r1, r1, 0x20
/* 8010B968  4E 80 00 20 */	blr 
