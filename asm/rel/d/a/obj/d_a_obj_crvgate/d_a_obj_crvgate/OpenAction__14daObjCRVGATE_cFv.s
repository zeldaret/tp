lbl_80BD18E0:
/* 80BD18E0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BD18E4  7C 08 02 A6 */	mflr r0
/* 80BD18E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BD18EC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BD18F0  4B 79 08 D4 */	b _savegpr_23
/* 80BD18F4  7C 79 1B 78 */	mr r25, r3
/* 80BD18F8  3C 80 80 BD */	lis r4, ccCylSrc@ha
/* 80BD18FC  3B C4 30 C0 */	addi r30, r4, ccCylSrc@l
/* 80BD1900  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BD1904  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80BD1908  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80BD190C  AB 83 06 46 */	lha r28, 0x646(r3)
/* 80BD1910  7F 9B E3 78 */	mr r27, r28
/* 80BD1914  4B FF F4 7D */	bl CheckVec__14daObjCRVGATE_cFv
/* 80BD1918  2C 03 00 00 */	cmpwi r3, 0
/* 80BD191C  41 82 04 34 */	beq lbl_80BD1D50
/* 80BD1920  C0 59 06 30 */	lfs f2, 0x630(r25)
/* 80BD1924  C0 19 06 28 */	lfs f0, 0x628(r25)
/* 80BD1928  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BD192C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BD1930  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BD1934  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80BD1938  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BD193C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BD1940  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BD1944  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80BD1948  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80BD194C  38 61 00 48 */	addi r3, r1, 0x48
/* 80BD1950  38 81 00 54 */	addi r4, r1, 0x54
/* 80BD1954  4B 77 5A 48 */	b PSVECSquareDistance
/* 80BD1958  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80BD195C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1960  40 81 00 58 */	ble lbl_80BD19B8
/* 80BD1964  FC 00 08 34 */	frsqrte f0, f1
/* 80BD1968  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80BD196C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1970  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80BD1974  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1978  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD197C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1980  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1984  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1988  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD198C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD1990  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1994  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1998  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD199C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD19A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD19A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD19A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD19AC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD19B0  FC 20 08 18 */	frsp f1, f1
/* 80BD19B4  48 00 00 88 */	b lbl_80BD1A3C
lbl_80BD19B8:
/* 80BD19B8  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80BD19BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD19C0  40 80 00 10 */	bge lbl_80BD19D0
/* 80BD19C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD19C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD19CC  48 00 00 70 */	b lbl_80BD1A3C
lbl_80BD19D0:
/* 80BD19D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD19D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BD19D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD19DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD19E0  7C 03 00 00 */	cmpw r3, r0
/* 80BD19E4  41 82 00 14 */	beq lbl_80BD19F8
/* 80BD19E8  40 80 00 40 */	bge lbl_80BD1A28
/* 80BD19EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD19F0  41 82 00 20 */	beq lbl_80BD1A10
/* 80BD19F4  48 00 00 34 */	b lbl_80BD1A28
lbl_80BD19F8:
/* 80BD19F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD19FC  41 82 00 0C */	beq lbl_80BD1A08
/* 80BD1A00  38 00 00 01 */	li r0, 1
/* 80BD1A04  48 00 00 28 */	b lbl_80BD1A2C
lbl_80BD1A08:
/* 80BD1A08  38 00 00 02 */	li r0, 2
/* 80BD1A0C  48 00 00 20 */	b lbl_80BD1A2C
lbl_80BD1A10:
/* 80BD1A10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1A14  41 82 00 0C */	beq lbl_80BD1A20
/* 80BD1A18  38 00 00 05 */	li r0, 5
/* 80BD1A1C  48 00 00 10 */	b lbl_80BD1A2C
lbl_80BD1A20:
/* 80BD1A20  38 00 00 03 */	li r0, 3
/* 80BD1A24  48 00 00 08 */	b lbl_80BD1A2C
lbl_80BD1A28:
/* 80BD1A28  38 00 00 04 */	li r0, 4
lbl_80BD1A2C:
/* 80BD1A2C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD1A30  40 82 00 0C */	bne lbl_80BD1A3C
/* 80BD1A34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD1A38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD1A3C:
/* 80BD1A3C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80BD1A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1A44  40 80 00 64 */	bge lbl_80BD1AA8
/* 80BD1A48  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 80BD1A4C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BD1A50  41 82 00 58 */	beq lbl_80BD1AA8
/* 80BD1A54  A8 79 06 46 */	lha r3, 0x646(r25)
/* 80BD1A58  38 03 10 00 */	addi r0, r3, 0x1000
/* 80BD1A5C  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1A60  38 00 00 01 */	li r0, 1
/* 80BD1A64  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1A68  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1A6C  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1A70  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BD1A74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1A78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1A7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1A80  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BD1A84  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1A88  38 C0 00 00 */	li r6, 0
/* 80BD1A8C  38 E0 00 00 */	li r7, 0
/* 80BD1A90  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1A94  FC 40 08 90 */	fmr f2, f1
/* 80BD1A98  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1A9C  FC 80 18 90 */	fmr f4, f3
/* 80BD1AA0  39 00 00 00 */	li r8, 0
/* 80BD1AA4  4B 6D 9E E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD1AA8:
/* 80BD1AA8  3A E0 00 00 */	li r23, 0
/* 80BD1AAC  3B 00 00 00 */	li r24, 0
lbl_80BD1AB0:
/* 80BD1AB0  3B 58 08 D8 */	addi r26, r24, 0x8d8
/* 80BD1AB4  7F 59 D2 14 */	add r26, r25, r26
/* 80BD1AB8  7F 43 D3 78 */	mr r3, r26
/* 80BD1ABC  4B 4B 29 A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BD1AC0  28 03 00 00 */	cmplwi r3, 0
/* 80BD1AC4  41 82 00 5C */	beq lbl_80BD1B20
/* 80BD1AC8  A8 79 06 46 */	lha r3, 0x646(r25)
/* 80BD1ACC  38 03 10 00 */	addi r0, r3, 0x1000
/* 80BD1AD0  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1AD4  38 00 00 01 */	li r0, 1
/* 80BD1AD8  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1ADC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1AE0  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1AE4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BD1AE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1AEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1AF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1AF4  38 81 00 28 */	addi r4, r1, 0x28
/* 80BD1AF8  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1AFC  38 C0 00 00 */	li r6, 0
/* 80BD1B00  38 E0 00 00 */	li r7, 0
/* 80BD1B04  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1B08  FC 40 08 90 */	fmr f2, f1
/* 80BD1B0C  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1B10  FC 80 18 90 */	fmr f4, f3
/* 80BD1B14  39 00 00 00 */	li r8, 0
/* 80BD1B18  4B 6D 9E 6C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD1B1C  48 00 01 90 */	b lbl_80BD1CAC
lbl_80BD1B20:
/* 80BD1B20  7F 43 D3 78 */	mr r3, r26
/* 80BD1B24  4B 4B 2B 34 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80BD1B28  28 03 00 00 */	cmplwi r3, 0
/* 80BD1B2C  41 82 01 80 */	beq lbl_80BD1CAC
/* 80BD1B30  7F 43 D3 78 */	mr r3, r26
/* 80BD1B34  4B 4B 2B BC */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80BD1B38  4B 69 1F 10 */	b GetAc__8cCcD_ObjFv
/* 80BD1B3C  A8 03 00 08 */	lha r0, 8(r3)
/* 80BD1B40  2C 00 00 EF */	cmpwi r0, 0xef
/* 80BD1B44  40 82 00 A0 */	bne lbl_80BD1BE4
/* 80BD1B48  88 19 05 AC */	lbz r0, 0x5ac(r25)
/* 80BD1B4C  28 00 00 FF */	cmplwi r0, 0xff
/* 80BD1B50  40 82 00 44 */	bne lbl_80BD1B94
/* 80BD1B54  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C5@ha */
/* 80BD1B58  38 03 02 C5 */	addi r0, r3, 0x02C5 /* 0x000802C5@l */
/* 80BD1B5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD1B60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1B64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1B68  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1B6C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BD1B70  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1B74  38 C0 00 00 */	li r6, 0
/* 80BD1B78  38 E0 00 00 */	li r7, 0
/* 80BD1B7C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1B80  FC 40 08 90 */	fmr f2, f1
/* 80BD1B84  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1B88  FC 80 18 90 */	fmr f4, f3
/* 80BD1B8C  39 00 00 00 */	li r8, 0
/* 80BD1B90  4B 6D 9D F4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD1B94:
/* 80BD1B94  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BD1B98  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD1B9C  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80BD1BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD1BA4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD1BA8  3C 00 43 30 */	lis r0, 0x4330
/* 80BD1BAC  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BD1BB0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80BD1BB4  EC 40 08 28 */	fsubs f2, f0, f1
/* 80BD1BB8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80BD1BBC  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80BD1BC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD1BC4  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD1BC8  FC 00 00 1E */	fctiwz f0, f0
/* 80BD1BCC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BD1BD0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BD1BD4  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1BD8  38 00 00 01 */	li r0, 1
/* 80BD1BDC  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1BE0  48 00 00 DC */	b lbl_80BD1CBC
lbl_80BD1BE4:
/* 80BD1BE4  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD1BE8  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80BD1BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD1BF0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80BD1BF4  3C 00 43 30 */	lis r0, 0x4330
/* 80BD1BF8  90 01 00 68 */	stw r0, 0x68(r1)
/* 80BD1BFC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80BD1C00  EC 40 08 28 */	fsubs f2, f0, f1
/* 80BD1C04  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80BD1C08  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BD1C0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD1C10  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD1C14  FC 00 00 1E */	fctiwz f0, f0
/* 80BD1C18  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BD1C1C  83 61 00 64 */	lwz r27, 0x64(r1)
/* 80BD1C20  7F 60 07 34 */	extsh r0, r27
/* 80BD1C24  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BD1C28  40 81 00 08 */	ble lbl_80BD1C30
/* 80BD1C2C  3B 60 40 00 */	li r27, 0x4000
lbl_80BD1C30:
/* 80BD1C30  7F 60 07 34 */	extsh r0, r27
/* 80BD1C34  7C 00 E0 00 */	cmpw r0, r28
/* 80BD1C38  41 82 00 5C */	beq lbl_80BD1C94
/* 80BD1C3C  88 19 05 A5 */	lbz r0, 0x5a5(r25)
/* 80BD1C40  28 00 00 00 */	cmplwi r0, 0
/* 80BD1C44  40 82 00 50 */	bne lbl_80BD1C94
/* 80BD1C48  38 00 00 01 */	li r0, 1
/* 80BD1C4C  98 19 05 A5 */	stb r0, 0x5a5(r25)
/* 80BD1C50  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1C54  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1C58  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD1C5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1C60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1C68  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD1C6C  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1C70  38 C0 00 00 */	li r6, 0
/* 80BD1C74  38 E0 00 00 */	li r7, 0
/* 80BD1C78  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1C7C  FC 40 08 90 */	fmr f2, f1
/* 80BD1C80  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1C84  FC 80 18 90 */	fmr f4, f3
/* 80BD1C88  39 00 00 00 */	li r8, 0
/* 80BD1C8C  4B 6D 9C F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD1C90  48 00 00 2C */	b lbl_80BD1CBC
lbl_80BD1C94:
/* 80BD1C94  7F 60 07 34 */	extsh r0, r27
/* 80BD1C98  7C 00 E0 00 */	cmpw r0, r28
/* 80BD1C9C  40 82 00 20 */	bne lbl_80BD1CBC
/* 80BD1CA0  38 00 00 00 */	li r0, 0
/* 80BD1CA4  98 19 05 A5 */	stb r0, 0x5a5(r25)
/* 80BD1CA8  48 00 00 14 */	b lbl_80BD1CBC
lbl_80BD1CAC:
/* 80BD1CAC  3A F7 00 01 */	addi r23, r23, 1
/* 80BD1CB0  2C 17 00 03 */	cmpwi r23, 3
/* 80BD1CB4  3B 18 01 38 */	addi r24, r24, 0x138
/* 80BD1CB8  41 80 FD F8 */	blt lbl_80BD1AB0
lbl_80BD1CBC:
/* 80BD1CBC  7F 60 07 34 */	extsh r0, r27
/* 80BD1CC0  7C 00 E0 00 */	cmpw r0, r28
/* 80BD1CC4  40 82 00 0C */	bne lbl_80BD1CD0
/* 80BD1CC8  38 00 00 00 */	li r0, 0
/* 80BD1CCC  98 19 05 A5 */	stb r0, 0x5a5(r25)
lbl_80BD1CD0:
/* 80BD1CD0  88 19 05 B1 */	lbz r0, 0x5b1(r25)
/* 80BD1CD4  28 00 00 01 */	cmplwi r0, 1
/* 80BD1CD8  40 82 00 5C */	bne lbl_80BD1D34
/* 80BD1CDC  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD1CE0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BD1CE4  40 81 00 14 */	ble lbl_80BD1CF8
/* 80BD1CE8  A8 79 06 48 */	lha r3, 0x648(r25)
/* 80BD1CEC  38 03 C0 00 */	addi r0, r3, -16384
/* 80BD1CF0  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80BD1CF4  B0 19 06 48 */	sth r0, 0x648(r25)
lbl_80BD1CF8:
/* 80BD1CF8  38 79 06 46 */	addi r3, r25, 0x646
/* 80BD1CFC  A8 99 06 48 */	lha r4, 0x648(r25)
/* 80BD1D00  38 A0 00 06 */	li r5, 6
/* 80BD1D04  38 C0 20 00 */	li r6, 0x2000
/* 80BD1D08  38 E0 00 50 */	li r7, 0x50
/* 80BD1D0C  4B 69 E8 34 */	b cLib_addCalcAngleS__FPsssss
/* 80BD1D10  A8 79 06 48 */	lha r3, 0x648(r25)
/* 80BD1D14  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD1D18  7C 03 00 50 */	subf r0, r3, r0
/* 80BD1D1C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BD1D20  28 00 01 00 */	cmplwi r0, 0x100
/* 80BD1D24  40 80 04 A8 */	bge lbl_80BD21CC
/* 80BD1D28  38 00 00 00 */	li r0, 0
/* 80BD1D2C  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1D30  48 00 04 9C */	b lbl_80BD21CC
lbl_80BD1D34:
/* 80BD1D34  38 79 06 46 */	addi r3, r25, 0x646
/* 80BD1D38  7F 64 DB 78 */	mr r4, r27
/* 80BD1D3C  38 A0 00 06 */	li r5, 6
/* 80BD1D40  38 C0 20 00 */	li r6, 0x2000
/* 80BD1D44  38 E0 00 50 */	li r7, 0x50
/* 80BD1D48  4B 69 E7 F8 */	b cLib_addCalcAngleS__FPsssss
/* 80BD1D4C  48 00 04 80 */	b lbl_80BD21CC
lbl_80BD1D50:
/* 80BD1D50  C0 59 06 30 */	lfs f2, 0x630(r25)
/* 80BD1D54  C0 19 06 28 */	lfs f0, 0x628(r25)
/* 80BD1D58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD1D5C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BD1D60  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BD1D64  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80BD1D68  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BD1D6C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BD1D70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD1D74  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BD1D78  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BD1D7C  38 61 00 30 */	addi r3, r1, 0x30
/* 80BD1D80  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BD1D84  4B 77 56 18 */	b PSVECSquareDistance
/* 80BD1D88  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80BD1D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1D90  40 81 00 58 */	ble lbl_80BD1DE8
/* 80BD1D94  FC 00 08 34 */	frsqrte f0, f1
/* 80BD1D98  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80BD1D9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1DA0  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80BD1DA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1DA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD1DAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1DB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1DB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1DB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1DBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD1DC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1DC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1DC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1DCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1DD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD1DD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1DD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1DDC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD1DE0  FC 20 08 18 */	frsp f1, f1
/* 80BD1DE4  48 00 00 88 */	b lbl_80BD1E6C
lbl_80BD1DE8:
/* 80BD1DE8  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80BD1DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1DF0  40 80 00 10 */	bge lbl_80BD1E00
/* 80BD1DF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD1DF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD1DFC  48 00 00 70 */	b lbl_80BD1E6C
lbl_80BD1E00:
/* 80BD1E00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD1E04  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD1E08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD1E0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD1E10  7C 03 00 00 */	cmpw r3, r0
/* 80BD1E14  41 82 00 14 */	beq lbl_80BD1E28
/* 80BD1E18  40 80 00 40 */	bge lbl_80BD1E58
/* 80BD1E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD1E20  41 82 00 20 */	beq lbl_80BD1E40
/* 80BD1E24  48 00 00 34 */	b lbl_80BD1E58
lbl_80BD1E28:
/* 80BD1E28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1E2C  41 82 00 0C */	beq lbl_80BD1E38
/* 80BD1E30  38 00 00 01 */	li r0, 1
/* 80BD1E34  48 00 00 28 */	b lbl_80BD1E5C
lbl_80BD1E38:
/* 80BD1E38  38 00 00 02 */	li r0, 2
/* 80BD1E3C  48 00 00 20 */	b lbl_80BD1E5C
lbl_80BD1E40:
/* 80BD1E40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1E44  41 82 00 0C */	beq lbl_80BD1E50
/* 80BD1E48  38 00 00 05 */	li r0, 5
/* 80BD1E4C  48 00 00 10 */	b lbl_80BD1E5C
lbl_80BD1E50:
/* 80BD1E50  38 00 00 03 */	li r0, 3
/* 80BD1E54  48 00 00 08 */	b lbl_80BD1E5C
lbl_80BD1E58:
/* 80BD1E58  38 00 00 04 */	li r0, 4
lbl_80BD1E5C:
/* 80BD1E5C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD1E60  40 82 00 0C */	bne lbl_80BD1E6C
/* 80BD1E64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD1E68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD1E6C:
/* 80BD1E6C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80BD1E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1E74  40 80 00 6C */	bge lbl_80BD1EE0
/* 80BD1E78  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 80BD1E7C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BD1E80  41 82 00 60 */	beq lbl_80BD1EE0
/* 80BD1E84  38 00 F0 00 */	li r0, -4096
/* 80BD1E88  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1E8C  A8 79 06 46 */	lha r3, 0x646(r25)
/* 80BD1E90  38 03 F0 00 */	addi r0, r3, -4096
/* 80BD1E94  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1E98  38 00 00 01 */	li r0, 1
/* 80BD1E9C  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1EA0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1EA4  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1EA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BD1EAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1EB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1EB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1EB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BD1EBC  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1EC0  38 C0 00 00 */	li r6, 0
/* 80BD1EC4  38 E0 00 00 */	li r7, 0
/* 80BD1EC8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1ECC  FC 40 08 90 */	fmr f2, f1
/* 80BD1ED0  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1ED4  FC 80 18 90 */	fmr f4, f3
/* 80BD1ED8  39 00 00 00 */	li r8, 0
/* 80BD1EDC  4B 6D 9A A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD1EE0:
/* 80BD1EE0  3B 40 00 00 */	li r26, 0
/* 80BD1EE4  3B 00 00 00 */	li r24, 0
lbl_80BD1EE8:
/* 80BD1EE8  3A F8 08 D8 */	addi r23, r24, 0x8d8
/* 80BD1EEC  7E F9 BA 14 */	add r23, r25, r23
/* 80BD1EF0  7E E3 BB 78 */	mr r3, r23
/* 80BD1EF4  4B 4B 25 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BD1EF8  28 03 00 00 */	cmplwi r3, 0
/* 80BD1EFC  41 82 00 5C */	beq lbl_80BD1F58
/* 80BD1F00  A8 79 06 46 */	lha r3, 0x646(r25)
/* 80BD1F04  38 03 F0 00 */	addi r0, r3, -4096
/* 80BD1F08  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1F0C  38 00 00 01 */	li r0, 1
/* 80BD1F10  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1F14  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1F18  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1F1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BD1F20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1F24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1F28  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1F2C  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD1F30  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1F34  38 C0 00 00 */	li r6, 0
/* 80BD1F38  38 E0 00 00 */	li r7, 0
/* 80BD1F3C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD1F40  FC 40 08 90 */	fmr f2, f1
/* 80BD1F44  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD1F48  FC 80 18 90 */	fmr f4, f3
/* 80BD1F4C  39 00 00 00 */	li r8, 0
/* 80BD1F50  4B 6D 9A 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD1F54  48 00 01 AC */	b lbl_80BD2100
lbl_80BD1F58:
/* 80BD1F58  7E E3 BB 78 */	mr r3, r23
/* 80BD1F5C  4B 4B 26 FC */	b ChkCoHit__12dCcD_GObjInfFv
/* 80BD1F60  28 03 00 00 */	cmplwi r3, 0
/* 80BD1F64  41 82 01 9C */	beq lbl_80BD2100
/* 80BD1F68  7E E3 BB 78 */	mr r3, r23
/* 80BD1F6C  4B 4B 27 84 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80BD1F70  4B 69 1A D8 */	b GetAc__8cCcD_ObjFv
/* 80BD1F74  A8 03 00 08 */	lha r0, 8(r3)
/* 80BD1F78  2C 00 00 EF */	cmpwi r0, 0xef
/* 80BD1F7C  40 82 00 A0 */	bne lbl_80BD201C
/* 80BD1F80  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BD1F84  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD1F88  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80BD1F8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD1F90  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80BD1F94  3C 00 43 30 */	lis r0, 0x4330
/* 80BD1F98  90 01 00 68 */	stw r0, 0x68(r1)
/* 80BD1F9C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80BD1FA0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80BD1FA4  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80BD1FA8  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80BD1FAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD1FB0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80BD1FB4  FC 00 00 1E */	fctiwz f0, f0
/* 80BD1FB8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BD1FBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD1FC0  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD1FC4  38 00 00 01 */	li r0, 1
/* 80BD1FC8  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD1FCC  88 19 05 AC */	lbz r0, 0x5ac(r25)
/* 80BD1FD0  28 00 00 FF */	cmplwi r0, 0xff
/* 80BD1FD4  40 82 01 2C */	bne lbl_80BD2100
/* 80BD1FD8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C5@ha */
/* 80BD1FDC  38 03 02 C5 */	addi r0, r3, 0x02C5 /* 0x000802C5@l */
/* 80BD1FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD1FE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD1FE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD1FEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1FF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD1FF4  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD1FF8  38 C0 00 00 */	li r6, 0
/* 80BD1FFC  38 E0 00 00 */	li r7, 0
/* 80BD2000  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD2004  FC 40 08 90 */	fmr f2, f1
/* 80BD2008  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD200C  FC 80 18 90 */	fmr f4, f3
/* 80BD2010  39 00 00 00 */	li r8, 0
/* 80BD2014  4B 6D 99 70 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD2018  48 00 00 E8 */	b lbl_80BD2100
lbl_80BD201C:
/* 80BD201C  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD2020  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80BD2024  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD2028  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80BD202C  3C 00 43 30 */	lis r0, 0x4330
/* 80BD2030  90 01 00 68 */	stw r0, 0x68(r1)
/* 80BD2034  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80BD2038  EC 40 08 28 */	fsubs f2, f0, f1
/* 80BD203C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80BD2040  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BD2044  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD2048  EC 02 00 28 */	fsubs f0, f2, f0
/* 80BD204C  FC 00 00 1E */	fctiwz f0, f0
/* 80BD2050  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BD2054  83 61 00 64 */	lwz r27, 0x64(r1)
/* 80BD2058  88 19 05 AC */	lbz r0, 0x5ac(r25)
/* 80BD205C  28 00 00 01 */	cmplwi r0, 1
/* 80BD2060  40 82 00 18 */	bne lbl_80BD2078
/* 80BD2064  7F 60 07 34 */	extsh r0, r27
/* 80BD2068  2C 00 DD 00 */	cmpwi r0, -8960
/* 80BD206C  40 80 00 1C */	bge lbl_80BD2088
/* 80BD2070  3B 60 DD 00 */	li r27, -8960
/* 80BD2074  48 00 00 14 */	b lbl_80BD2088
lbl_80BD2078:
/* 80BD2078  7F 60 07 34 */	extsh r0, r27
/* 80BD207C  2C 00 C0 00 */	cmpwi r0, -16384
/* 80BD2080  40 80 00 08 */	bge lbl_80BD2088
/* 80BD2084  3B 60 C0 00 */	li r27, -16384
lbl_80BD2088:
/* 80BD2088  7F 60 07 34 */	extsh r0, r27
/* 80BD208C  7C 00 E0 00 */	cmpw r0, r28
/* 80BD2090  41 82 00 5C */	beq lbl_80BD20EC
/* 80BD2094  88 19 05 A5 */	lbz r0, 0x5a5(r25)
/* 80BD2098  28 00 00 00 */	cmplwi r0, 0
/* 80BD209C  40 82 00 50 */	bne lbl_80BD20EC
/* 80BD20A0  38 00 00 01 */	li r0, 1
/* 80BD20A4  98 19 05 A5 */	stb r0, 0x5a5(r25)
/* 80BD20A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD20AC  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD20B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BD20B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD20B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD20BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD20C0  38 81 00 10 */	addi r4, r1, 0x10
/* 80BD20C4  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BD20C8  38 C0 00 00 */	li r6, 0
/* 80BD20CC  38 E0 00 00 */	li r7, 0
/* 80BD20D0  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD20D4  FC 40 08 90 */	fmr f2, f1
/* 80BD20D8  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD20DC  FC 80 18 90 */	fmr f4, f3
/* 80BD20E0  39 00 00 00 */	li r8, 0
/* 80BD20E4  4B 6D 98 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD20E8  48 00 00 18 */	b lbl_80BD2100
lbl_80BD20EC:
/* 80BD20EC  7F 60 07 34 */	extsh r0, r27
/* 80BD20F0  7C 00 E0 00 */	cmpw r0, r28
/* 80BD20F4  40 82 00 0C */	bne lbl_80BD2100
/* 80BD20F8  38 00 00 00 */	li r0, 0
/* 80BD20FC  98 19 05 A5 */	stb r0, 0x5a5(r25)
lbl_80BD2100:
/* 80BD2100  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD2104  2C 1A 00 03 */	cmpwi r26, 3
/* 80BD2108  3B 18 01 38 */	addi r24, r24, 0x138
/* 80BD210C  41 80 FD DC */	blt lbl_80BD1EE8
/* 80BD2110  7F 60 07 34 */	extsh r0, r27
/* 80BD2114  7C 00 E0 00 */	cmpw r0, r28
/* 80BD2118  40 82 00 0C */	bne lbl_80BD2124
/* 80BD211C  38 00 00 00 */	li r0, 0
/* 80BD2120  98 19 05 A5 */	stb r0, 0x5a5(r25)
lbl_80BD2124:
/* 80BD2124  88 19 05 B1 */	lbz r0, 0x5b1(r25)
/* 80BD2128  28 00 00 01 */	cmplwi r0, 1
/* 80BD212C  40 82 00 88 */	bne lbl_80BD21B4
/* 80BD2130  88 19 05 AC */	lbz r0, 0x5ac(r25)
/* 80BD2134  28 00 00 01 */	cmplwi r0, 1
/* 80BD2138  40 82 00 24 */	bne lbl_80BD215C
/* 80BD213C  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD2140  2C 00 DD 00 */	cmpwi r0, -8960
/* 80BD2144  40 80 00 34 */	bge lbl_80BD2178
/* 80BD2148  A8 79 06 48 */	lha r3, 0x648(r25)
/* 80BD214C  38 03 23 00 */	addi r0, r3, 0x2300
/* 80BD2150  20 00 DD 00 */	subfic r0, r0, -8960
/* 80BD2154  B0 19 06 48 */	sth r0, 0x648(r25)
/* 80BD2158  48 00 00 20 */	b lbl_80BD2178
lbl_80BD215C:
/* 80BD215C  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD2160  2C 00 C0 00 */	cmpwi r0, -16384
/* 80BD2164  40 80 00 14 */	bge lbl_80BD2178
/* 80BD2168  A8 79 06 48 */	lha r3, 0x648(r25)
/* 80BD216C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BD2170  20 00 C0 00 */	subfic r0, r0, -16384
/* 80BD2174  B0 19 06 48 */	sth r0, 0x648(r25)
lbl_80BD2178:
/* 80BD2178  38 79 06 46 */	addi r3, r25, 0x646
/* 80BD217C  A8 99 06 48 */	lha r4, 0x648(r25)
/* 80BD2180  38 A0 00 06 */	li r5, 6
/* 80BD2184  38 C0 20 00 */	li r6, 0x2000
/* 80BD2188  38 E0 00 50 */	li r7, 0x50
/* 80BD218C  4B 69 E3 B4 */	b cLib_addCalcAngleS__FPsssss
/* 80BD2190  A8 79 06 48 */	lha r3, 0x648(r25)
/* 80BD2194  A8 19 06 46 */	lha r0, 0x646(r25)
/* 80BD2198  7C 03 00 50 */	subf r0, r3, r0
/* 80BD219C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BD21A0  28 00 01 00 */	cmplwi r0, 0x100
/* 80BD21A4  40 80 00 28 */	bge lbl_80BD21CC
/* 80BD21A8  38 00 00 00 */	li r0, 0
/* 80BD21AC  98 19 05 B1 */	stb r0, 0x5b1(r25)
/* 80BD21B0  48 00 00 1C */	b lbl_80BD21CC
lbl_80BD21B4:
/* 80BD21B4  38 79 06 46 */	addi r3, r25, 0x646
/* 80BD21B8  7F 64 DB 78 */	mr r4, r27
/* 80BD21BC  38 A0 00 06 */	li r5, 6
/* 80BD21C0  38 C0 20 00 */	li r6, 0x2000
/* 80BD21C4  38 E0 00 50 */	li r7, 0x50
/* 80BD21C8  4B 69 E3 78 */	b cLib_addCalcAngleS__FPsssss
lbl_80BD21CC:
/* 80BD21CC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BD21D0  4B 79 00 40 */	b _restgpr_23
/* 80BD21D4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BD21D8  7C 08 03 A6 */	mtlr r0
/* 80BD21DC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BD21E0  4E 80 00 20 */	blr 
