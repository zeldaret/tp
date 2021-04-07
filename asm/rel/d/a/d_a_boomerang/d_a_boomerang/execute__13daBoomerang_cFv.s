lbl_804A1814:
/* 804A1814  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A1818  7C 08 02 A6 */	mflr r0
/* 804A181C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A1820  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804A1824  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804A1828  39 61 00 40 */	addi r11, r1, 0x40
/* 804A182C  4B EC 09 A1 */	bl _savegpr_25
/* 804A1830  7C 7C 1B 78 */	mr r28, r3
/* 804A1834  3C 60 80 4A */	lis r3, lit_4078@ha /* 0x804A2850@ha */
/* 804A1838  3B E3 28 50 */	addi r31, r3, lit_4078@l /* 0x804A2850@l */
/* 804A183C  88 1C 09 57 */	lbz r0, 0x957(r28)
/* 804A1840  28 00 00 00 */	cmplwi r0, 0
/* 804A1844  41 82 00 1C */	beq lbl_804A1860
/* 804A1848  C0 1C 09 B8 */	lfs f0, 0x9b8(r28)
/* 804A184C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 804A1850  C0 1C 09 BC */	lfs f0, 0x9bc(r28)
/* 804A1854  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 804A1858  C0 1C 09 C0 */	lfs f0, 0x9c0(r28)
/* 804A185C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_804A1860:
/* 804A1860  80 1C 09 64 */	lwz r0, 0x964(r28)
/* 804A1864  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A1868  41 82 00 A8 */	beq lbl_804A1910
/* 804A186C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804A1870  4B B7 C5 15 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 804A1874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A1878  41 82 00 98 */	beq lbl_804A1910
/* 804A187C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 804A1880  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804A1884  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804A1888  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A188C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804A1890  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A1894  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804A1898  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804A189C  38 61 00 0C */	addi r3, r1, 0xc
/* 804A18A0  4B B7 C4 7D */	bl roofCheck__11fopAcM_rc_cFPC4cXyz
/* 804A18A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A18A8  41 82 00 30 */	beq lbl_804A18D8
/* 804A18AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A18B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A18B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804A18B8  3C 80 80 3F */	lis r4, mRoofCheck__11fopAcM_rc_c@ha /* 0x803F1D24@ha */
/* 804A18BC  38 84 1D 24 */	addi r4, r4, mRoofCheck__11fopAcM_rc_c@l /* 0x803F1D24@l */
/* 804A18C0  4B BD 34 ED */	bl GetUnderwaterRoofCode__4dBgSFRC13cBgS_PolyInfo
/* 804A18C4  28 03 00 00 */	cmplwi r3, 0
/* 804A18C8  40 82 00 10 */	bne lbl_804A18D8
/* 804A18CC  3C 60 80 45 */	lis r3, mRoofY__11fopAcM_rc_c@ha /* 0x80450CD4@ha */
/* 804A18D0  C0 03 0C D4 */	lfs f0, mRoofY__11fopAcM_rc_c@l(r3)  /* 0x80450CD4@l */
/* 804A18D4  48 00 00 08 */	b lbl_804A18DC
lbl_804A18D8:
/* 804A18D8  C0 1F 01 34 */	lfs f0, 0x134(r31)
lbl_804A18DC:
/* 804A18DC  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 804A18E0  C0 43 0C D8 */	lfs f2, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 804A18E4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804A18E8  40 81 00 28 */	ble lbl_804A1910
/* 804A18EC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804A18F0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804A18F4  EC 02 00 28 */	fsubs f0, f2, f0
/* 804A18F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A18FC  40 80 00 14 */	bge lbl_804A1910
/* 804A1900  7F 83 E3 78 */	mr r3, r28
/* 804A1904  4B B7 83 79 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804A1908  38 60 00 01 */	li r3, 1
/* 804A190C  48 00 02 A8 */	b lbl_804A1BB4
lbl_804A1910:
/* 804A1910  88 1C 09 56 */	lbz r0, 0x956(r28)
/* 804A1914  28 00 00 00 */	cmplwi r0, 0
/* 804A1918  41 82 00 14 */	beq lbl_804A192C
/* 804A191C  7F 83 E3 78 */	mr r3, r28
/* 804A1920  4B B7 83 5D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804A1924  38 60 00 01 */	li r3, 1
/* 804A1928  48 00 02 8C */	b lbl_804A1BB4
lbl_804A192C:
/* 804A192C  38 60 00 00 */	li r3, 0
/* 804A1930  98 7C 05 F9 */	stb r3, 0x5f9(r28)
/* 804A1934  38 00 FF FF */	li r0, -1
/* 804A1938  90 1C 06 D4 */	stw r0, 0x6d4(r28)
/* 804A193C  90 7C 06 D8 */	stw r3, 0x6d8(r28)
/* 804A1940  A8 7C 09 62 */	lha r3, 0x962(r28)
/* 804A1944  2C 03 00 00 */	cmpwi r3, 0
/* 804A1948  41 82 00 0C */	beq lbl_804A1954
/* 804A194C  38 03 FF FF */	addi r0, r3, -1
/* 804A1950  B0 1C 09 62 */	sth r0, 0x962(r28)
lbl_804A1954:
/* 804A1954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A1958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A195C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804A1960  7C 00 07 74 */	extsb r0, r0
/* 804A1964  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804A1968  7C 63 02 14 */	add r3, r3, r0
/* 804A196C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804A1970  AB C3 02 32 */	lha r30, 0x232(r3)
/* 804A1974  AB A3 02 30 */	lha r29, 0x230(r3)
/* 804A1978  3B 20 00 00 */	li r25, 0
/* 804A197C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804A1980  3B 63 35 90 */	addi r27, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804A1984  48 00 00 50 */	b lbl_804A19D4
lbl_804A1988:
/* 804A1988  57 20 10 3A */	slwi r0, r25, 2
/* 804A198C  7F 5C 02 14 */	add r26, r28, r0
/* 804A1990  80 7A 06 AC */	lwz r3, 0x6ac(r26)
/* 804A1994  3C 03 00 01 */	addis r0, r3, 1
/* 804A1998  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A199C  41 82 00 34 */	beq lbl_804A19D0
/* 804A19A0  90 61 00 08 */	stw r3, 8(r1)
/* 804A19A4  7F 63 DB 78 */	mr r3, r27
/* 804A19A8  38 81 00 08 */	addi r4, r1, 8
/* 804A19AC  4B B7 7E 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804A19B0  90 7A 06 C0 */	stw r3, 0x6c0(r26)
/* 804A19B4  80 1A 06 C0 */	lwz r0, 0x6c0(r26)
/* 804A19B8  28 00 00 00 */	cmplwi r0, 0
/* 804A19BC  40 82 00 14 */	bne lbl_804A19D0
/* 804A19C0  7F 83 E3 78 */	mr r3, r28
/* 804A19C4  7F 24 CB 78 */	mr r4, r25
/* 804A19C8  4B FF DD 49 */	bl pushLockList__13daBoomerang_cFi
/* 804A19CC  3B 39 FF FF */	addi r25, r25, -1
lbl_804A19D0:
/* 804A19D0  3B 39 00 01 */	addi r25, r25, 1
lbl_804A19D4:
/* 804A19D4  88 1C 09 50 */	lbz r0, 0x950(r28)
/* 804A19D8  7C 19 00 00 */	cmpw r25, r0
/* 804A19DC  41 80 FF AC */	blt lbl_804A1988
/* 804A19E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A19E4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A19E8  83 5B 5D B4 */	lwz r26, 0x5db4(r27)
/* 804A19EC  38 7B 4E 20 */	addi r3, r27, 0x4e20
/* 804A19F0  81 9B 4E 20 */	lwz r12, 0x4e20(r27)
/* 804A19F4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 804A19F8  7D 89 03 A6 */	mtctr r12
/* 804A19FC  4E 80 04 21 */	bctrl 
/* 804A1A00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A1A04  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 804A1A08  28 00 00 03 */	cmplwi r0, 3
/* 804A1A0C  41 82 00 BC */	beq lbl_804A1AC8
/* 804A1A10  7F 43 D3 78 */	mr r3, r26
/* 804A1A14  4B C3 E7 09 */	bl getBoomLockMax__9daAlink_cFv
/* 804A1A18  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 804A1A1C  EF E0 08 2A */	fadds f31, f0, f1
/* 804A1A20  3B 20 00 00 */	li r25, 0
/* 804A1A24  EF FF 07 F2 */	fmuls f31, f31, f31
/* 804A1A28  3B E0 00 00 */	li r31, 0
/* 804A1A2C  48 00 00 6C */	b lbl_804A1A98
lbl_804A1A30:
/* 804A1A30  38 1F 07 18 */	addi r0, r31, 0x718
/* 804A1A34  7C 1C 00 AE */	lbzx r0, r28, r0
/* 804A1A38  28 00 00 00 */	cmplwi r0, 0
/* 804A1A3C  41 82 00 1C */	beq lbl_804A1A58
/* 804A1A40  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804A1A44  1C 9F 00 0C */	mulli r4, r31, 0xc
/* 804A1A48  38 84 06 DC */	addi r4, r4, 0x6dc
/* 804A1A4C  7C 9C 22 14 */	add r4, r28, r4
/* 804A1A50  4B EA 59 4D */	bl PSVECSquareDistance
/* 804A1A54  48 00 00 24 */	b lbl_804A1A78
lbl_804A1A58:
/* 804A1A58  57 E3 10 3A */	slwi r3, r31, 2
/* 804A1A5C  38 03 06 C0 */	addi r0, r3, 0x6c0
/* 804A1A60  7C 9C 00 2E */	lwzx r4, r28, r0
/* 804A1A64  28 04 00 00 */	cmplwi r4, 0
/* 804A1A68  41 82 00 2C */	beq lbl_804A1A94
/* 804A1A6C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804A1A70  38 84 05 38 */	addi r4, r4, 0x538
/* 804A1A74  4B EA 59 29 */	bl PSVECSquareDistance
lbl_804A1A78:
/* 804A1A78  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804A1A7C  40 81 00 18 */	ble lbl_804A1A94
/* 804A1A80  7F 83 E3 78 */	mr r3, r28
/* 804A1A84  7F E4 FB 78 */	mr r4, r31
/* 804A1A88  4B FF DC 89 */	bl pushLockList__13daBoomerang_cFi
/* 804A1A8C  3B 20 00 01 */	li r25, 1
/* 804A1A90  3B FF FF FF */	addi r31, r31, -1
lbl_804A1A94:
/* 804A1A94  3B FF 00 01 */	addi r31, r31, 1
lbl_804A1A98:
/* 804A1A98  88 1C 09 50 */	lbz r0, 0x950(r28)
/* 804A1A9C  7C 1F 00 00 */	cmpw r31, r0
/* 804A1AA0  41 80 FF 90 */	blt lbl_804A1A30
/* 804A1AA4  2C 19 00 00 */	cmpwi r25, 0
/* 804A1AA8  41 82 00 20 */	beq lbl_804A1AC8
/* 804A1AAC  28 00 00 00 */	cmplwi r0, 0
/* 804A1AB0  40 82 00 18 */	bne lbl_804A1AC8
/* 804A1AB4  80 1C 09 64 */	lwz r0, 0x964(r28)
/* 804A1AB8  60 00 00 01 */	ori r0, r0, 1
/* 804A1ABC  90 1C 09 64 */	stw r0, 0x964(r28)
/* 804A1AC0  38 00 00 00 */	li r0, 0
/* 804A1AC4  98 1C 09 57 */	stb r0, 0x957(r28)
lbl_804A1AC8:
/* 804A1AC8  7F 83 E3 78 */	mr r3, r28
/* 804A1ACC  39 9C 0D C0 */	addi r12, r28, 0xdc0
/* 804A1AD0  4B EC 05 B5 */	bl __ptmf_scall
/* 804A1AD4  60 00 00 00 */	nop 
/* 804A1AD8  7F 83 E3 78 */	mr r3, r28
/* 804A1ADC  4B FF DF 15 */	bl setRoomInfo__13daBoomerang_cFv
/* 804A1AE0  38 7C 05 98 */	addi r3, r28, 0x598
/* 804A1AE4  88 9C 09 51 */	lbz r4, 0x951(r28)
/* 804A1AE8  88 BC 09 50 */	lbz r5, 0x950(r28)
/* 804A1AEC  4B FF D0 79 */	bl playAnime__19daBoomerang_sight_cFii
/* 804A1AF0  B3 DC 09 5C */	sth r30, 0x95c(r28)
/* 804A1AF4  B3 BC 09 5E */	sth r29, 0x95e(r28)
/* 804A1AF8  7F 83 E3 78 */	mr r3, r28
/* 804A1AFC  4B FF E6 31 */	bl setEffect__13daBoomerang_cFv
/* 804A1B00  38 7C 07 20 */	addi r3, r28, 0x720
/* 804A1B04  38 80 00 00 */	li r4, 0
/* 804A1B08  88 BC 09 53 */	lbz r5, 0x953(r28)
/* 804A1B0C  81 9C 07 30 */	lwz r12, 0x730(r28)
/* 804A1B10  81 8C 00 08 */	lwz r12, 8(r12)
/* 804A1B14  7D 89 03 A6 */	mtctr r12
/* 804A1B18  4E 80 04 21 */	bctrl 
/* 804A1B1C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804A1B20  D0 1C 09 B8 */	stfs f0, 0x9b8(r28)
/* 804A1B24  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804A1B28  D0 1C 09 BC */	stfs f0, 0x9bc(r28)
/* 804A1B2C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804A1B30  D0 1C 09 C0 */	stfs f0, 0x9c0(r28)
/* 804A1B34  88 1C 09 57 */	lbz r0, 0x957(r28)
/* 804A1B38  28 00 00 00 */	cmplwi r0, 0
/* 804A1B3C  41 82 00 2C */	beq lbl_804A1B68
/* 804A1B40  38 7C 09 C4 */	addi r3, r28, 0x9c4
/* 804A1B44  38 9C 09 AC */	addi r4, r28, 0x9ac
/* 804A1B48  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 804A1B4C  4B DC EC 61 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804A1B50  C0 1C 09 C4 */	lfs f0, 0x9c4(r28)
/* 804A1B54  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 804A1B58  C0 1C 09 C8 */	lfs f0, 0x9c8(r28)
/* 804A1B5C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 804A1B60  C0 1C 09 CC */	lfs f0, 0x9cc(r28)
/* 804A1B64  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_804A1B68:
/* 804A1B68  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804A1B6C  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 804A1B70  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804A1B74  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 804A1B78  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804A1B7C  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 804A1B80  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804A1B84  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 804A1B88  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804A1B8C  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 804A1B90  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804A1B94  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 804A1B98  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 804A1B9C  28 00 00 00 */	cmplwi r0, 0
/* 804A1BA0  41 82 00 10 */	beq lbl_804A1BB0
/* 804A1BA4  38 00 00 01 */	li r0, 1
/* 804A1BA8  3C 60 80 45 */	lis r3, struct_8045101C+0x2@ha /* 0x8045101E@ha */
/* 804A1BAC  B0 03 10 1E */	sth r0, struct_8045101C+0x2@l(r3)  /* 0x8045101E@l */
lbl_804A1BB0:
/* 804A1BB0  38 60 00 01 */	li r3, 1
lbl_804A1BB4:
/* 804A1BB4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804A1BB8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804A1BBC  39 61 00 40 */	addi r11, r1, 0x40
/* 804A1BC0  4B EC 06 59 */	bl _restgpr_25
/* 804A1BC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A1BC8  7C 08 03 A6 */	mtlr r0
/* 804A1BCC  38 21 00 50 */	addi r1, r1, 0x50
/* 804A1BD0  4E 80 00 20 */	blr 
