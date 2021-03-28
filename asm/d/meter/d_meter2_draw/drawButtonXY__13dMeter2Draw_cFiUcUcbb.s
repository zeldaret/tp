lbl_80217AB4:
/* 80217AB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80217AB8  7C 08 02 A6 */	mflr r0
/* 80217ABC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80217AC0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80217AC4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80217AC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80217ACC  48 14 A7 01 */	bl _savegpr_25
/* 80217AD0  7C 7F 1B 78 */	mr r31, r3
/* 80217AD4  7C 9B 23 78 */	mr r27, r4
/* 80217AD8  7C B9 2B 78 */	mr r25, r5
/* 80217ADC  7C DC 33 78 */	mr r28, r6
/* 80217AE0  7D 1D 43 78 */	mr r29, r8
/* 80217AE4  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 80217AE8  40 82 02 44 */	bne lbl_80217D2C
/* 80217AEC  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80217AF0  57 65 18 38 */	slwi r5, r27, 3
/* 80217AF4  3C 80 80 3A */	lis r4, tag_7361@ha
/* 80217AF8  38 04 88 A8 */	addi r0, r4, tag_7361@l
/* 80217AFC  7C 80 2A 14 */	add r4, r0, r5
/* 80217B00  80 A4 00 00 */	lwz r5, 0(r4)
/* 80217B04  80 C4 00 04 */	lwz r6, 4(r4)
/* 80217B08  81 83 00 00 */	lwz r12, 0(r3)
/* 80217B0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80217B10  7D 89 03 A6 */	mtctr r12
/* 80217B14  4E 80 04 21 */	bctrl 
/* 80217B18  38 00 00 00 */	li r0, 0
/* 80217B1C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80217B20  2C 1B 00 00 */	cmpwi r27, 0
/* 80217B24  40 82 00 20 */	bne lbl_80217B44
/* 80217B28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80217B2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80217B30  88 03 5E 5E */	lbz r0, 0x5e5e(r3)
/* 80217B34  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 80217B38  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 80217B3C  7C 1A 1B 78 */	or r26, r0, r3
/* 80217B40  48 00 00 24 */	b lbl_80217B64
lbl_80217B44:
/* 80217B44  2C 1B 00 01 */	cmpwi r27, 1
/* 80217B48  40 82 00 1C */	bne lbl_80217B64
/* 80217B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80217B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80217B54  88 03 5E 62 */	lbz r0, 0x5e62(r3)
/* 80217B58  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 80217B5C  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 80217B60  7C 1A 1B 78 */	or r26, r0, r3
lbl_80217B64:
/* 80217B64  7F E3 FB 78 */	mr r3, r31
/* 80217B68  7F 84 E3 78 */	mr r4, r28
/* 80217B6C  38 A0 00 01 */	li r5, 1
/* 80217B70  38 DB 07 68 */	addi r6, r27, 0x768
/* 80217B74  7C DF 32 14 */	add r6, r31, r6
/* 80217B78  48 00 27 7D */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 80217B7C  7C 7E 1B 78 */	mr r30, r3
/* 80217B80  2C 1A 00 00 */	cmpwi r26, 0
/* 80217B84  41 82 00 10 */	beq lbl_80217B94
/* 80217B88  38 00 00 07 */	li r0, 7
/* 80217B8C  7C 7F DA 14 */	add r3, r31, r27
/* 80217B90  98 03 07 68 */	stb r0, 0x768(r3)
lbl_80217B94:
/* 80217B94  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80217B98  41 82 00 84 */	beq lbl_80217C1C
/* 80217B9C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80217BA0  28 00 00 10 */	cmplwi r0, 0x10
/* 80217BA4  40 82 00 44 */	bne lbl_80217BE8
/* 80217BA8  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80217BAC  57 60 10 3A */	slwi r0, r27, 2
/* 80217BB0  7C 9F 02 14 */	add r4, r31, r0
/* 80217BB4  C0 04 06 20 */	lfs f0, 0x620(r4)
/* 80217BB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80217BBC  40 82 00 1C */	bne lbl_80217BD8
/* 80217BC0  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80217BC4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217BC8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217BCC  C0 03 04 7C */	lfs f0, 0x47c(r3)
/* 80217BD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80217BD4  D0 04 06 20 */	stfs f0, 0x620(r4)
lbl_80217BD8:
/* 80217BD8  38 00 00 01 */	li r0, 1
/* 80217BDC  7C 7F DA 14 */	add r3, r31, r27
/* 80217BE0  98 03 07 5C */	stb r0, 0x75c(r3)
/* 80217BE4  48 00 00 38 */	b lbl_80217C1C
lbl_80217BE8:
/* 80217BE8  28 00 00 00 */	cmplwi r0, 0
/* 80217BEC  41 82 00 24 */	beq lbl_80217C10
/* 80217BF0  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80217BF4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217BF8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217BFC  C0 03 04 7C */	lfs f0, 0x47c(r3)
/* 80217C00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80217C04  57 60 10 3A */	slwi r0, r27, 2
/* 80217C08  7C 7F 02 14 */	add r3, r31, r0
/* 80217C0C  D0 03 06 20 */	stfs f0, 0x620(r3)
lbl_80217C10:
/* 80217C10  38 00 00 00 */	li r0, 0
/* 80217C14  7C 7F DA 14 */	add r3, r31, r27
/* 80217C18  98 03 07 5C */	stb r0, 0x75c(r3)
lbl_80217C1C:
/* 80217C1C  88 1E 00 00 */	lbz r0, 0(r30)
/* 80217C20  7C 00 07 75 */	extsb. r0, r0
/* 80217C24  41 82 00 18 */	beq lbl_80217C3C
/* 80217C28  57 60 10 3A */	slwi r0, r27, 2
/* 80217C2C  7C 7F 02 14 */	add r3, r31, r0
/* 80217C30  80 63 03 54 */	lwz r3, 0x354(r3)
/* 80217C34  48 03 D9 95 */	bl show__13CPaneMgrAlphaFv
/* 80217C38  48 00 00 14 */	b lbl_80217C4C
lbl_80217C3C:
/* 80217C3C  57 60 10 3A */	slwi r0, r27, 2
/* 80217C40  7C 7F 02 14 */	add r3, r31, r0
/* 80217C44  80 63 03 54 */	lwz r3, 0x354(r3)
/* 80217C48  48 03 D9 C1 */	bl hide__13CPaneMgrAlphaFv
lbl_80217C4C:
/* 80217C4C  3B 20 00 00 */	li r25, 0
/* 80217C50  3B 80 00 00 */	li r28, 0
/* 80217C54  57 7A 10 3A */	slwi r26, r27, 2
/* 80217C58  7F BF D2 14 */	add r29, r31, r26
lbl_80217C5C:
/* 80217C5C  38 1C 00 E8 */	addi r0, r28, 0xe8
/* 80217C60  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80217C64  80 63 00 04 */	lwz r3, 4(r3)
/* 80217C68  48 0E 89 F1 */	bl getStringPtr__10J2DTextBoxCFv
/* 80217C6C  7F C4 F3 78 */	mr r4, r30
/* 80217C70  48 15 0E BD */	bl strcpy
/* 80217C74  3B 39 00 01 */	addi r25, r25, 1
/* 80217C78  2C 19 00 05 */	cmpwi r25, 5
/* 80217C7C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80217C80  41 80 FF DC */	blt lbl_80217C5C
/* 80217C84  2C 1B 00 00 */	cmpwi r27, 0
/* 80217C88  40 82 00 50 */	bne lbl_80217CD8
/* 80217C8C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217C90  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217C94  C0 03 02 F4 */	lfs f0, 0x2f4(r3)
/* 80217C98  7F 5F D2 14 */	add r26, r31, r26
/* 80217C9C  80 7A 03 54 */	lwz r3, 0x354(r26)
/* 80217CA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80217CA4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217CA8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80217CB0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217CB4  7D 89 03 A6 */	mtctr r12
/* 80217CB8  4E 80 04 21 */	bctrl 
/* 80217CBC  80 7A 03 54 */	lwz r3, 0x354(r26)
/* 80217CC0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80217CC4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80217CC8  C0 24 02 F8 */	lfs f1, 0x2f8(r4)
/* 80217CCC  C0 44 02 FC */	lfs f2, 0x2fc(r4)
/* 80217CD0  48 03 C8 E1 */	bl paneTrans__8CPaneMgrFff
/* 80217CD4  48 00 05 44 */	b lbl_80218218
lbl_80217CD8:
/* 80217CD8  2C 1B 00 01 */	cmpwi r27, 1
/* 80217CDC  40 82 05 3C */	bne lbl_80218218
/* 80217CE0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217CE4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217CE8  C0 03 02 F4 */	lfs f0, 0x2f4(r3)
/* 80217CEC  7F 5F D2 14 */	add r26, r31, r26
/* 80217CF0  80 7A 03 54 */	lwz r3, 0x354(r26)
/* 80217CF4  80 63 00 04 */	lwz r3, 4(r3)
/* 80217CF8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217CFC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217D00  81 83 00 00 */	lwz r12, 0(r3)
/* 80217D04  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217D08  7D 89 03 A6 */	mtctr r12
/* 80217D0C  4E 80 04 21 */	bctrl 
/* 80217D10  80 7A 03 54 */	lwz r3, 0x354(r26)
/* 80217D14  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80217D18  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80217D1C  C0 24 02 F8 */	lfs f1, 0x2f8(r4)
/* 80217D20  C0 44 02 FC */	lfs f2, 0x2fc(r4)
/* 80217D24  48 03 C8 8D */	bl paneTrans__8CPaneMgrFff
/* 80217D28  48 00 04 F0 */	b lbl_80218218
lbl_80217D2C:
/* 80217D2C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80217D30  57 65 18 38 */	slwi r5, r27, 3
/* 80217D34  3C 80 80 3A */	lis r4, tag_7361@ha
/* 80217D38  38 04 88 A8 */	addi r0, r4, tag_7361@l
/* 80217D3C  7F 40 2A 14 */	add r26, r0, r5
/* 80217D40  80 BA 00 00 */	lwz r5, 0(r26)
/* 80217D44  80 DA 00 04 */	lwz r6, 4(r26)
/* 80217D48  81 83 00 00 */	lwz r12, 0(r3)
/* 80217D4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80217D50  7D 89 03 A6 */	mtctr r12
/* 80217D54  4E 80 04 21 */	bctrl 
/* 80217D58  38 00 00 01 */	li r0, 1
/* 80217D5C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80217D60  57 7C 10 3A */	slwi r28, r27, 2
/* 80217D64  7F DF E2 14 */	add r30, r31, r28
/* 80217D68  80 7E 03 54 */	lwz r3, 0x354(r30)
/* 80217D6C  48 03 D8 9D */	bl hide__13CPaneMgrAlphaFv
/* 80217D70  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 80217D74  28 00 00 FF */	cmplwi r0, 0xff
/* 80217D78  41 82 00 0C */	beq lbl_80217D84
/* 80217D7C  28 00 00 00 */	cmplwi r0, 0
/* 80217D80  40 82 00 30 */	bne lbl_80217DB0
lbl_80217D84:
/* 80217D84  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80217D88  80 BA 00 00 */	lwz r5, 0(r26)
/* 80217D8C  80 DA 00 04 */	lwz r6, 4(r26)
/* 80217D90  81 83 00 00 */	lwz r12, 0(r3)
/* 80217D94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80217D98  7D 89 03 A6 */	mtctr r12
/* 80217D9C  4E 80 04 21 */	bctrl 
/* 80217DA0  38 00 00 00 */	li r0, 0
/* 80217DA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80217DA8  3B A0 00 01 */	li r29, 1
/* 80217DAC  48 00 00 3C */	b lbl_80217DE8
lbl_80217DB0:
/* 80217DB0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80217DB4  80 BA 00 00 */	lwz r5, 0(r26)
/* 80217DB8  80 DA 00 04 */	lwz r6, 4(r26)
/* 80217DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80217DC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80217DC4  7D 89 03 A6 */	mtctr r12
/* 80217DC8  4E 80 04 21 */	bctrl 
/* 80217DCC  38 00 00 01 */	li r0, 1
/* 80217DD0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80217DD4  7F E3 FB 78 */	mr r3, r31
/* 80217DD8  7F 64 DB 78 */	mr r4, r27
/* 80217DDC  7F 25 CB 78 */	mr r5, r25
/* 80217DE0  48 00 29 3D */	bl changeTextureItemXY__13dMeter2Draw_cFiUc
/* 80217DE4  3B A0 00 00 */	li r29, 0
lbl_80217DE8:
/* 80217DE8  2C 1B 00 01 */	cmpwi r27, 1
/* 80217DEC  41 82 00 30 */	beq lbl_80217E1C
/* 80217DF0  40 80 00 10 */	bge lbl_80217E00
/* 80217DF4  2C 1B 00 00 */	cmpwi r27, 0
/* 80217DF8  40 80 00 14 */	bge lbl_80217E0C
/* 80217DFC  48 00 00 3C */	b lbl_80217E38
lbl_80217E00:
/* 80217E00  2C 1B 00 03 */	cmpwi r27, 3
/* 80217E04  40 80 00 34 */	bge lbl_80217E38
/* 80217E08  48 00 00 24 */	b lbl_80217E2C
lbl_80217E0C:
/* 80217E0C  7F E3 FB 78 */	mr r3, r31
/* 80217E10  7F 24 CB 78 */	mr r4, r25
/* 80217E14  48 00 32 F1 */	bl setItemParamX__13dMeter2Draw_cFUc
/* 80217E18  48 00 00 20 */	b lbl_80217E38
lbl_80217E1C:
/* 80217E1C  7F E3 FB 78 */	mr r3, r31
/* 80217E20  7F 24 CB 78 */	mr r4, r25
/* 80217E24  48 00 35 41 */	bl setItemParamY__13dMeter2Draw_cFUc
/* 80217E28  48 00 00 10 */	b lbl_80217E38
lbl_80217E2C:
/* 80217E2C  7F E3 FB 78 */	mr r3, r31
/* 80217E30  7F 24 CB 78 */	mr r4, r25
/* 80217E34  48 00 37 7D */	bl setItemParamZ__13dMeter2Draw_cFUc
lbl_80217E38:
/* 80217E38  7C 7F E2 14 */	add r3, r31, r28
/* 80217E3C  80 63 03 2C */	lwz r3, 0x32c(r3)
/* 80217E40  80 63 00 04 */	lwz r3, 4(r3)
/* 80217E44  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80217E48  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80217E4C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80217E50  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80217E54  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80217E58  EC 21 00 28 */	fsubs f1, f1, f0
/* 80217E5C  C0 02 AE 94 */	lfs f0, lit_4922(r2)
/* 80217E60  EC 20 00 72 */	fmuls f1, f0, f1
/* 80217E64  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80217E68  38 80 00 7A */	li r4, 0x7a
/* 80217E6C  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 80217E70  7C BF 02 14 */	add r5, r31, r0
/* 80217E74  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 80217E78  48 0D F3 65 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 80217E7C  2C 1B 00 00 */	cmpwi r27, 0
/* 80217E80  40 82 01 CC */	bne lbl_8021804C
/* 80217E84  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217E88  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217E8C  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 80217E90  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 80217E94  80 63 00 04 */	lwz r3, 4(r3)
/* 80217E98  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217E9C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 80217EA4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217EA8  7D 89 03 A6 */	mtctr r12
/* 80217EAC  4E 80 04 21 */	bctrl 
/* 80217EB0  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 80217EB4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80217EB8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80217EBC  C0 24 01 4C */	lfs f1, 0x14c(r4)
/* 80217EC0  C0 44 01 50 */	lfs f2, 0x150(r4)
/* 80217EC4  48 03 C6 ED */	bl paneTrans__8CPaneMgrFff
/* 80217EC8  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80217ECC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80217ED0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80217ED4  38 80 00 00 */	li r4, 0
/* 80217ED8  48 00 4A 79 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80217EDC  88 1F 07 73 */	lbz r0, 0x773(r31)
/* 80217EE0  7C 00 18 00 */	cmpw r0, r3
/* 80217EE4  41 82 00 58 */	beq lbl_80217F3C
/* 80217EE8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80217EEC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80217EF0  38 80 00 00 */	li r4, 0
/* 80217EF4  48 00 4A 5D */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80217EF8  98 7F 07 73 */	stb r3, 0x773(r31)
/* 80217EFC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80217F00  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80217F04  38 80 00 00 */	li r4, 0
/* 80217F08  48 00 4A 49 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80217F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80217F10  41 82 00 2C */	beq lbl_80217F3C
/* 80217F14  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80217F18  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80217F1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80217F20  40 82 00 1C */	bne lbl_80217F3C
/* 80217F24  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80217F28  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217F2C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217F30  C0 03 04 E0 */	lfs f0, 0x4e0(r3)
/* 80217F34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80217F38  D0 1F 06 10 */	stfs f0, 0x610(r31)
lbl_80217F3C:
/* 80217F3C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80217F40  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80217F44  38 80 00 00 */	li r4, 0
/* 80217F48  48 00 4A 09 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80217F4C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217F50  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80217F54  C0 03 05 4C */	lfs f0, 0x54c(r3)
/* 80217F58  EF FF 00 32 */	fmuls f31, f31, f0
/* 80217F5C  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80217F60  80 63 00 04 */	lwz r3, 4(r3)
/* 80217F64  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 80217F68  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 80217F6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80217F70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217F74  7D 89 03 A6 */	mtctr r12
/* 80217F78  4E 80 04 21 */	bctrl 
/* 80217F7C  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80217F80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80217F84  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 80217F88  EC 21 00 2A */	fadds f1, f1, f0
/* 80217F8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80217F90  C0 1F 06 B8 */	lfs f0, 0x6b8(r31)
/* 80217F94  EC 42 00 2A */	fadds f2, f2, f0
/* 80217F98  48 03 C6 19 */	bl paneTrans__8CPaneMgrFff
/* 80217F9C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80217FA0  38 03 EB C8 */	addi r0, r3, g_drawHIO@l
/* 80217FA4  57 BA 10 3A */	slwi r26, r29, 2
/* 80217FA8  7C 60 D2 14 */	add r3, r0, r26
/* 80217FAC  C0 03 02 40 */	lfs f0, 0x240(r3)
/* 80217FB0  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80217FB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80217FB8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217FBC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217FC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80217FC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217FC8  7D 89 03 A6 */	mtctr r12
/* 80217FCC  4E 80 04 21 */	bctrl 
/* 80217FD0  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80217FD4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80217FD8  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 80217FDC  7C 80 D2 14 */	add r4, r0, r26
/* 80217FE0  C0 24 02 48 */	lfs f1, 0x248(r4)
/* 80217FE4  C0 44 02 50 */	lfs f2, 0x250(r4)
/* 80217FE8  48 03 C5 C9 */	bl paneTrans__8CPaneMgrFff
/* 80217FEC  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80217FF0  7C 9F D2 14 */	add r4, r31, r26
/* 80217FF4  C0 24 08 1C */	lfs f1, 0x81c(r4)
/* 80217FF8  C0 1F 07 F0 */	lfs f0, 0x7f0(r31)
/* 80217FFC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218000  48 03 D7 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218004  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80218008  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021800C  C0 03 02 F4 */	lfs f0, 0x2f4(r3)
/* 80218010  80 7E 03 54 */	lwz r3, 0x354(r30)
/* 80218014  80 63 00 04 */	lwz r3, 4(r3)
/* 80218018  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021801C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80218020  81 83 00 00 */	lwz r12, 0(r3)
/* 80218024  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80218028  7D 89 03 A6 */	mtctr r12
/* 8021802C  4E 80 04 21 */	bctrl 
/* 80218030  80 7E 03 54 */	lwz r3, 0x354(r30)
/* 80218034  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80218038  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8021803C  C0 24 02 F8 */	lfs f1, 0x2f8(r4)
/* 80218040  C0 44 02 FC */	lfs f2, 0x2fc(r4)
/* 80218044  48 03 C5 6D */	bl paneTrans__8CPaneMgrFff
/* 80218048  48 00 01 D0 */	b lbl_80218218
lbl_8021804C:
/* 8021804C  2C 1B 00 01 */	cmpwi r27, 1
/* 80218050  40 82 01 C8 */	bne lbl_80218218
/* 80218054  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80218058  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021805C  C0 03 01 54 */	lfs f0, 0x154(r3)
/* 80218060  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80218064  80 63 00 04 */	lwz r3, 4(r3)
/* 80218068  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021806C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80218070  81 83 00 00 */	lwz r12, 0(r3)
/* 80218074  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80218078  7D 89 03 A6 */	mtctr r12
/* 8021807C  4E 80 04 21 */	bctrl 
/* 80218080  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80218084  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80218088  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8021808C  C0 24 01 5C */	lfs f1, 0x15c(r4)
/* 80218090  C0 44 01 60 */	lfs f2, 0x160(r4)
/* 80218094  48 03 C5 1D */	bl paneTrans__8CPaneMgrFff
/* 80218098  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 8021809C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802180A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802180A4  38 80 00 01 */	li r4, 1
/* 802180A8  48 00 48 A9 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 802180AC  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 802180B0  7C 00 18 00 */	cmpw r0, r3
/* 802180B4  41 82 00 58 */	beq lbl_8021810C
/* 802180B8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802180BC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802180C0  38 80 00 01 */	li r4, 1
/* 802180C4  48 00 48 8D */	bl isDirectUseItem__13dMeter2Info_cFi
/* 802180C8  98 7F 07 74 */	stb r3, 0x774(r31)
/* 802180CC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802180D0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802180D4  38 80 00 01 */	li r4, 1
/* 802180D8  48 00 48 79 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 802180DC  2C 03 00 00 */	cmpwi r3, 0
/* 802180E0  41 82 00 2C */	beq lbl_8021810C
/* 802180E4  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 802180E8  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 802180EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802180F0  40 82 00 1C */	bne lbl_8021810C
/* 802180F4  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 802180F8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802180FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80218100  C0 03 04 E0 */	lfs f0, 0x4e0(r3)
/* 80218104  EC 01 00 28 */	fsubs f0, f1, f0
/* 80218108  D0 1F 06 14 */	stfs f0, 0x614(r31)
lbl_8021810C:
/* 8021810C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80218110  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80218114  38 80 00 01 */	li r4, 1
/* 80218118  48 00 48 39 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 8021811C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80218120  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80218124  C0 03 05 4C */	lfs f0, 0x54c(r3)
/* 80218128  EF FF 00 32 */	fmuls f31, f31, f0
/* 8021812C  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 80218130  80 63 00 04 */	lwz r3, 4(r3)
/* 80218134  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 80218138  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 8021813C  81 83 00 00 */	lwz r12, 0(r3)
/* 80218140  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80218144  7D 89 03 A6 */	mtctr r12
/* 80218148  4E 80 04 21 */	bctrl 
/* 8021814C  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 80218150  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80218154  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 80218158  EC 21 00 2A */	fadds f1, f1, f0
/* 8021815C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80218160  C0 1F 06 BC */	lfs f0, 0x6bc(r31)
/* 80218164  EC 42 00 2A */	fadds f2, f2, f0
/* 80218168  48 03 C4 49 */	bl paneTrans__8CPaneMgrFff
/* 8021816C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80218170  38 03 EB C8 */	addi r0, r3, g_drawHIO@l
/* 80218174  57 BA 10 3A */	slwi r26, r29, 2
/* 80218178  7C 60 D2 14 */	add r3, r0, r26
/* 8021817C  C0 03 02 60 */	lfs f0, 0x260(r3)
/* 80218180  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 80218184  80 63 00 04 */	lwz r3, 4(r3)
/* 80218188  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021818C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80218190  81 83 00 00 */	lwz r12, 0(r3)
/* 80218194  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80218198  7D 89 03 A6 */	mtctr r12
/* 8021819C  4E 80 04 21 */	bctrl 
/* 802181A0  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 802181A4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 802181A8  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 802181AC  7C 80 D2 14 */	add r4, r0, r26
/* 802181B0  C0 24 02 68 */	lfs f1, 0x268(r4)
/* 802181B4  C0 44 02 70 */	lfs f2, 0x270(r4)
/* 802181B8  48 03 C3 F9 */	bl paneTrans__8CPaneMgrFff
/* 802181BC  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 802181C0  7C 9F D2 14 */	add r4, r31, r26
/* 802181C4  C0 24 08 24 */	lfs f1, 0x824(r4)
/* 802181C8  C0 1F 07 F0 */	lfs f0, 0x7f0(r31)
/* 802181CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 802181D0  48 03 D6 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802181D4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802181D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802181DC  C0 03 02 F4 */	lfs f0, 0x2f4(r3)
/* 802181E0  80 7E 03 54 */	lwz r3, 0x354(r30)
/* 802181E4  80 63 00 04 */	lwz r3, 4(r3)
/* 802181E8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802181EC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802181F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802181F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802181F8  7D 89 03 A6 */	mtctr r12
/* 802181FC  4E 80 04 21 */	bctrl 
/* 80218200  80 7E 03 54 */	lwz r3, 0x354(r30)
/* 80218204  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80218208  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8021820C  C0 24 02 F8 */	lfs f1, 0x2f8(r4)
/* 80218210  C0 44 02 FC */	lfs f2, 0x2fc(r4)
/* 80218214  48 03 C3 9D */	bl paneTrans__8CPaneMgrFff
lbl_80218218:
/* 80218218  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8021821C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80218220  39 61 00 30 */	addi r11, r1, 0x30
/* 80218224  48 14 9F F5 */	bl _restgpr_25
/* 80218228  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021822C  7C 08 03 A6 */	mtlr r0
/* 80218230  38 21 00 40 */	addi r1, r1, 0x40
/* 80218234  4E 80 00 20 */	blr 
