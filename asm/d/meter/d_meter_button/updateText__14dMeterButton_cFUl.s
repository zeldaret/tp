lbl_80206978:
/* 80206978  94 21 F9 A0 */	stwu r1, -0x660(r1)
/* 8020697C  7C 08 02 A6 */	mflr r0
/* 80206980  90 01 06 64 */	stw r0, 0x664(r1)
/* 80206984  DB E1 06 50 */	stfd f31, 0x650(r1)
/* 80206988  F3 E1 06 58 */	psq_st f31, 1624(r1), 0, 0 /* qr0 */
/* 8020698C  39 61 06 50 */	addi r11, r1, 0x650
/* 80206990  48 15 B8 45 */	bl _savegpr_27
/* 80206994  7C 7E 1B 78 */	mr r30, r3
/* 80206998  7C 9F 23 78 */	mr r31, r4
/* 8020699C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802069A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802069A4  88 03 00 F1 */	lbz r0, 0xf1(r3)
/* 802069A8  28 00 00 00 */	cmplwi r0, 0
/* 802069AC  41 82 00 20 */	beq lbl_802069CC
/* 802069B0  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 802069B4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 802069B8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 802069BC  C0 24 05 54 */	lfs f1, 0x554(r4)
/* 802069C0  C0 42 AD 48 */	lfs f2, lit_4146(r2)
/* 802069C4  48 04 DB ED */	bl paneTrans__8CPaneMgrFff
/* 802069C8  48 00 00 1C */	b lbl_802069E4
lbl_802069CC:
/* 802069CC  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 802069D0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 802069D4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 802069D8  C0 24 05 54 */	lfs f1, 0x554(r4)
/* 802069DC  C0 44 05 58 */	lfs f2, 0x558(r4)
/* 802069E0  48 04 DB D1 */	bl paneTrans__8CPaneMgrFff
lbl_802069E4:
/* 802069E4  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 802069E8  38 61 00 10 */	addi r3, r1, 0x10
/* 802069EC  80 A4 00 04 */	lwz r5, 4(r4)
/* 802069F0  38 C0 00 00 */	li r6, 0
/* 802069F4  38 E0 00 00 */	li r7, 0
/* 802069F8  48 04 E4 C5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802069FC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80206A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80206A04  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80206A08  90 01 00 20 */	stw r0, 0x20(r1)
/* 80206A0C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80206A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80206A14  80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 80206A18  80 63 00 04 */	lwz r3, 4(r3)
/* 80206A1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80206A20  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80206A24  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80206A28  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 80206A2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80206A30  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206A34  7D 89 03 A6 */	mtctr r12
/* 80206A38  4E 80 04 21 */	bctrl 
/* 80206A3C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80206A40  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
/* 80206A44  A8 1D 00 A8 */	lha r0, 0xa8(r29)
/* 80206A48  2C 00 00 00 */	cmpwi r0, 0
/* 80206A4C  40 81 01 FC */	ble lbl_80206C48
/* 80206A50  A0 7E 04 B2 */	lhz r3, 0x4b2(r30)
/* 80206A54  A0 1D 00 A6 */	lhz r0, 0xa6(r29)
/* 80206A58  7C 03 00 40 */	cmplw r3, r0
/* 80206A5C  41 82 00 C0 */	beq lbl_80206B1C
/* 80206A60  3B 60 00 00 */	li r27, 0
/* 80206A64  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 80206A68  28 03 00 00 */	cmplwi r3, 0
/* 80206A6C  41 82 00 08 */	beq lbl_80206A74
/* 80206A70  83 63 00 04 */	lwz r27, 4(r3)
lbl_80206A74:
/* 80206A74  83 9E 00 D4 */	lwz r28, 0xd4(r30)
/* 80206A78  4B E0 DF 79 */	bl mDoExt_getMesgFont__Fv
/* 80206A7C  7C 66 1B 78 */	mr r6, r3
/* 80206A80  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 80206A84  80 83 00 04 */	lwz r4, 4(r3)
/* 80206A88  A0 7D 00 A6 */	lhz r3, 0xa6(r29)
/* 80206A8C  38 00 00 00 */	li r0, 0
/* 80206A90  90 01 00 08 */	stw r0, 8(r1)
/* 80206A94  7F 65 DB 78 */	mr r5, r27
/* 80206A98  7F 87 E3 78 */	mr r7, r28
/* 80206A9C  39 01 04 28 */	addi r8, r1, 0x428
/* 80206AA0  39 21 02 28 */	addi r9, r1, 0x228
/* 80206AA4  39 41 00 28 */	addi r10, r1, 0x28
/* 80206AA8  48 03 16 4D */	bl getString__12dMsgObject_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cPcPcPcPs
/* 80206AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80206AB0  41 82 00 6C */	beq lbl_80206B1C
/* 80206AB4  A0 1D 00 A6 */	lhz r0, 0xa6(r29)
/* 80206AB8  B0 1E 04 B2 */	sth r0, 0x4b2(r30)
/* 80206ABC  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 80206AC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80206AC4  48 0F 9B 95 */	bl getStringPtr__10J2DTextBoxCFv
/* 80206AC8  38 81 04 28 */	addi r4, r1, 0x428
/* 80206ACC  48 16 20 61 */	bl strcpy
/* 80206AD0  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 80206AD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80206AD8  48 0F 9B 81 */	bl getStringPtr__10J2DTextBoxCFv
/* 80206ADC  38 81 00 28 */	addi r4, r1, 0x28
/* 80206AE0  48 16 20 4D */	bl strcpy
/* 80206AE4  3B 60 00 00 */	li r27, 0
/* 80206AE8  3B A0 00 00 */	li r29, 0
lbl_80206AEC:
/* 80206AEC  38 1D 00 EC */	addi r0, r29, 0xec
/* 80206AF0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80206AF4  28 03 00 00 */	cmplwi r3, 0
/* 80206AF8  41 82 00 14 */	beq lbl_80206B0C
/* 80206AFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80206B00  48 0F 9B 59 */	bl getStringPtr__10J2DTextBoxCFv
/* 80206B04  38 81 02 28 */	addi r4, r1, 0x228
/* 80206B08  48 16 20 25 */	bl strcpy
lbl_80206B0C:
/* 80206B0C  3B 7B 00 01 */	addi r27, r27, 1
/* 80206B10  2C 1B 00 02 */	cmpwi r27, 2
/* 80206B14  3B BD 00 04 */	addi r29, r29, 4
/* 80206B18  41 80 FF D4 */	blt lbl_80206AEC
lbl_80206B1C:
/* 80206B1C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80206B20  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80206B24  48 01 56 CD */	bl decFloatingMessageTimer__13dMeter2Info_cFv
/* 80206B28  C3 E2 AD 4C */	lfs f31, lit_4147(r2)
/* 80206B2C  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 80206B30  40 82 00 38 */	bne lbl_80206B68
/* 80206B34  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80206B38  40 82 00 30 */	bne lbl_80206B68
/* 80206B3C  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80206B40  40 82 00 28 */	bne lbl_80206B68
/* 80206B44  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80206B48  40 82 00 20 */	bne lbl_80206B68
/* 80206B4C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80206B50  40 82 00 18 */	bne lbl_80206B68
/* 80206B54  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80206B58  40 82 00 10 */	bne lbl_80206B68
/* 80206B5C  7C 60 07 34 */	extsh r0, r3
/* 80206B60  2C 00 00 0A */	cmpwi r0, 0xa
/* 80206B64  40 80 00 5C */	bge lbl_80206BC0
lbl_80206B68:
/* 80206B68  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80206B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80206B70  40 81 00 34 */	ble lbl_80206BA4
/* 80206B74  38 03 FF FF */	addi r0, r3, -1
/* 80206B78  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80206B7C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80206B80  C8 22 AD 68 */	lfd f1, lit_4517(r2)
/* 80206B84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80206B88  90 01 06 2C */	stw r0, 0x62c(r1)
/* 80206B8C  3C 00 43 30 */	lis r0, 0x4330
/* 80206B90  90 01 06 28 */	stw r0, 0x628(r1)
/* 80206B94  C8 01 06 28 */	lfd f0, 0x628(r1)
/* 80206B98  EC 20 08 28 */	fsubs f1, f0, f1
/* 80206B9C  C0 02 AD 50 */	lfs f0, lit_4148(r2)
/* 80206BA0  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80206BA4:
/* 80206BA4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80206BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80206BAC  40 82 00 50 */	bne lbl_80206BFC
/* 80206BB0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80206BB4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80206BB8  48 01 56 61 */	bl resetFloatingMessage__13dMeter2Info_cFv
/* 80206BBC  48 00 00 40 */	b lbl_80206BFC
lbl_80206BC0:
/* 80206BC0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80206BC4  2C 03 00 0A */	cmpwi r3, 0xa
/* 80206BC8  40 80 00 34 */	bge lbl_80206BFC
/* 80206BCC  38 03 00 01 */	addi r0, r3, 1
/* 80206BD0  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80206BD4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80206BD8  C8 22 AD 68 */	lfd f1, lit_4517(r2)
/* 80206BDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80206BE0  90 01 06 2C */	stw r0, 0x62c(r1)
/* 80206BE4  3C 00 43 30 */	lis r0, 0x4330
/* 80206BE8  90 01 06 28 */	stw r0, 0x628(r1)
/* 80206BEC  C8 01 06 28 */	lfd f0, 0x628(r1)
/* 80206BF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80206BF4  C0 02 AD 50 */	lfs f0, lit_4148(r2)
/* 80206BF8  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80206BFC:
/* 80206BFC  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 80206C00  FC 20 F8 90 */	fmr f1, f31
/* 80206C04  48 04 EB CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80206C08  3B 60 00 00 */	li r27, 0
/* 80206C0C  3B E0 00 00 */	li r31, 0
lbl_80206C10:
/* 80206C10  7F 9E FA 14 */	add r28, r30, r31
/* 80206C14  80 7C 00 E4 */	lwz r3, 0xe4(r28)
/* 80206C18  FC 20 F8 90 */	fmr f1, f31
/* 80206C1C  48 04 EB B5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80206C20  80 7C 00 EC */	lwz r3, 0xec(r28)
/* 80206C24  28 03 00 00 */	cmplwi r3, 0
/* 80206C28  41 82 00 0C */	beq lbl_80206C34
/* 80206C2C  FC 20 F8 90 */	fmr f1, f31
/* 80206C30  48 04 EB A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80206C34:
/* 80206C34  3B 7B 00 01 */	addi r27, r27, 1
/* 80206C38  2C 1B 00 02 */	cmpwi r27, 2
/* 80206C3C  3B FF 00 04 */	addi r31, r31, 4
/* 80206C40  41 80 FF D0 */	blt lbl_80206C10
/* 80206C44  48 00 00 7C */	b lbl_80206CC0
lbl_80206C48:
/* 80206C48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80206C4C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80206C50  B0 1E 04 B2 */	sth r0, 0x4b2(r30)
/* 80206C54  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 80206C58  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80206C5C  48 04 EB 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80206C60  3B 60 00 00 */	li r27, 0
/* 80206C64  3B E0 00 00 */	li r31, 0
/* 80206C68  C3 E2 AD 48 */	lfs f31, lit_4146(r2)
lbl_80206C6C:
/* 80206C6C  7F 9E FA 14 */	add r28, r30, r31
/* 80206C70  80 7C 00 E4 */	lwz r3, 0xe4(r28)
/* 80206C74  48 04 EB B5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80206C78  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80206C7C  41 82 00 10 */	beq lbl_80206C8C
/* 80206C80  80 7C 00 E4 */	lwz r3, 0xe4(r28)
/* 80206C84  FC 20 F8 90 */	fmr f1, f31
/* 80206C88  48 04 EB 49 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80206C8C:
/* 80206C8C  80 7C 00 EC */	lwz r3, 0xec(r28)
/* 80206C90  28 03 00 00 */	cmplwi r3, 0
/* 80206C94  41 82 00 1C */	beq lbl_80206CB0
/* 80206C98  48 04 EB 91 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80206C9C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80206CA0  41 82 00 10 */	beq lbl_80206CB0
/* 80206CA4  80 7C 00 EC */	lwz r3, 0xec(r28)
/* 80206CA8  FC 20 F8 90 */	fmr f1, f31
/* 80206CAC  48 04 EB 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80206CB0:
/* 80206CB0  3B 7B 00 01 */	addi r27, r27, 1
/* 80206CB4  2C 1B 00 02 */	cmpwi r27, 2
/* 80206CB8  3B FF 00 04 */	addi r31, r31, 4
/* 80206CBC  41 80 FF B0 */	blt lbl_80206C6C
lbl_80206CC0:
/* 80206CC0  E3 E1 06 58 */	psq_l f31, 1624(r1), 0, 0 /* qr0 */
/* 80206CC4  CB E1 06 50 */	lfd f31, 0x650(r1)
/* 80206CC8  39 61 06 50 */	addi r11, r1, 0x650
/* 80206CCC  48 15 B5 55 */	bl _restgpr_27
/* 80206CD0  80 01 06 64 */	lwz r0, 0x664(r1)
/* 80206CD4  7C 08 03 A6 */	mtlr r0
/* 80206CD8  38 21 06 60 */	addi r1, r1, 0x660
/* 80206CDC  4E 80 00 20 */	blr 
