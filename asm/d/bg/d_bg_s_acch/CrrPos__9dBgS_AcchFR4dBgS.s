lbl_80076AAC:
/* 80076AAC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80076AB0  7C 08 02 A6 */	mflr r0
/* 80076AB4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80076AB8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80076ABC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80076AC0  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80076AC4  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80076AC8  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80076ACC  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80076AD0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80076AD4  48 2E B7 09 */	bl _savegpr_29
/* 80076AD8  7C 7E 1B 78 */	mr r30, r3
/* 80076ADC  7C 9F 23 78 */	mr r31, r4
/* 80076AE0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80076AE4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 80076AE8  40 82 04 6C */	bne lbl_80076F54
/* 80076AEC  7F E3 FB 78 */	mr r3, r31
/* 80076AF0  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 80076AF4  54 A5 DF FE */	rlwinm r5, r5, 0x1b, 0x1f, 0x1f
/* 80076AF8  80 DE 00 30 */	lwz r6, 0x30(r30)
/* 80076AFC  80 FE 00 3C */	lwz r7, 0x3c(r30)
/* 80076B00  81 1E 00 40 */	lwz r8, 0x40(r30)
/* 80076B04  39 20 00 00 */	li r9, 0
/* 80076B08  39 40 00 00 */	li r10, 0
/* 80076B0C  4B FF EC 69 */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 80076B10  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80076B14  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80076B18  40 82 00 A0 */	bne lbl_80076BB8
/* 80076B1C  38 A0 00 00 */	li r5, 0
/* 80076B20  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80076B24  41 82 00 5C */	beq lbl_80076B80
/* 80076B28  38 60 00 00 */	li r3, 0
/* 80076B2C  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 80076B30  7C 09 03 A6 */	mtctr r0
/* 80076B34  2C 00 00 00 */	cmpwi r0, 0
/* 80076B38  40 81 00 48 */	ble lbl_80076B80
lbl_80076B3C:
/* 80076B3C  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 80076B40  7C 80 1A 14 */	add r4, r0, r3
/* 80076B44  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80076B48  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80076B4C  41 82 00 2C */	beq lbl_80076B78
/* 80076B50  7F E3 FB 78 */	mr r3, r31
/* 80076B54  38 A0 00 01 */	li r5, 1
/* 80076B58  80 DE 00 30 */	lwz r6, 0x30(r30)
/* 80076B5C  80 FE 00 3C */	lwz r7, 0x3c(r30)
/* 80076B60  81 1E 00 40 */	lwz r8, 0x40(r30)
/* 80076B64  39 20 00 01 */	li r9, 1
/* 80076B68  39 40 00 00 */	li r10, 0
/* 80076B6C  4B FF EC 09 */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 80076B70  38 A0 00 01 */	li r5, 1
/* 80076B74  48 00 00 0C */	b lbl_80076B80
lbl_80076B78:
/* 80076B78  38 63 00 40 */	addi r3, r3, 0x40
/* 80076B7C  42 00 FF C0 */	bdnz lbl_80076B3C
lbl_80076B80:
/* 80076B80  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80076B84  40 82 00 34 */	bne lbl_80076BB8
/* 80076B88  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076B8C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80076B90  41 82 00 28 */	beq lbl_80076BB8
/* 80076B94  7F E3 FB 78 */	mr r3, r31
/* 80076B98  38 9E 01 30 */	addi r4, r30, 0x130
/* 80076B9C  38 A0 00 01 */	li r5, 1
/* 80076BA0  80 DE 00 30 */	lwz r6, 0x30(r30)
/* 80076BA4  80 FE 00 3C */	lwz r7, 0x3c(r30)
/* 80076BA8  81 1E 00 40 */	lwz r8, 0x40(r30)
/* 80076BAC  39 20 00 00 */	li r9, 0
/* 80076BB0  39 40 00 01 */	li r10, 1
/* 80076BB4  4B FF EB C1 */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
lbl_80076BB8:
/* 80076BB8  7F C3 F3 78 */	mr r3, r30
/* 80076BBC  7F E4 FB 78 */	mr r4, r31
/* 80076BC0  4B FF F7 19 */	bl GroundCheckInit__9dBgS_AcchFR4dBgS
/* 80076BC4  7F C3 F3 78 */	mr r3, r30
/* 80076BC8  4B FF F6 05 */	bl Init__9dBgS_AcchFv
/* 80076BCC  7F C3 F3 78 */	mr r3, r30
/* 80076BD0  48 00 05 A9 */	bl GetWallAllLowH_R__9dBgS_AcchFv
/* 80076BD4  FF C0 08 90 */	fmr f30, f1
/* 80076BD8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80076BDC  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 80076BE0  C0 43 00 08 */	lfs f2, 8(r3)
/* 80076BE4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076BE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80076BEC  C0 22 8C C0 */	lfs f1, lit_4025(r2)
/* 80076BF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80076BF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80076BF8  C0 44 00 08 */	lfs f2, 8(r4)
/* 80076BFC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80076C00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80076C04  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80076C08  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80076C0C  38 61 00 08 */	addi r3, r1, 8
/* 80076C10  38 81 00 14 */	addi r4, r1, 0x14
/* 80076C14  48 2D 07 89 */	bl PSVECSquareDistance
/* 80076C18  FF E0 08 90 */	fmr f31, f1
/* 80076C1C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80076C20  C0 23 00 04 */	lfs f1, 4(r3)
/* 80076C24  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076C28  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076C2C  EF A1 00 28 */	fsubs f29, f1, f0
/* 80076C30  7F C3 F3 78 */	mr r3, r30
/* 80076C34  48 00 04 F5 */	bl GetWallAllLowH__9dBgS_AcchFv
/* 80076C38  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076C3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076C40  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 80076C44  38 00 00 00 */	li r0, 0
/* 80076C48  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 80076C4C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80076C50  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076C54  EC 41 00 2A */	fadds f2, f1, f0
/* 80076C58  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80076C5C  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076C60  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076C64  EC 61 00 2A */	fadds f3, f1, f0
/* 80076C68  3B A0 00 00 */	li r29, 0
/* 80076C6C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076C70  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80076C74  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076C78  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80076C7C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80076C80  40 82 00 50 */	bne lbl_80076CD0
/* 80076C84  FC 00 F2 10 */	fabs f0, f30
/* 80076C88  FC 20 00 18 */	frsp f1, f0
/* 80076C8C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80076C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80076C94  41 80 00 3C */	blt lbl_80076CD0
/* 80076C98  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80076C9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80076CA0  41 81 00 20 */	bgt lbl_80076CC0
/* 80076CA4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80076CA8  41 81 00 18 */	bgt lbl_80076CC0
/* 80076CAC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80076CB0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80076CB4  41 81 00 0C */	bgt lbl_80076CC0
/* 80076CB8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80076CBC  41 82 00 14 */	beq lbl_80076CD0
lbl_80076CC0:
/* 80076CC0  3B A0 00 01 */	li r29, 1
/* 80076CC4  7F C3 F3 78 */	mr r3, r30
/* 80076CC8  7F E4 FB 78 */	mr r4, r31
/* 80076CCC  4B FF F9 59 */	bl LineCheck__9dBgS_AcchFR4dBgS
lbl_80076CD0:
/* 80076CD0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076CD4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80076CD8  40 82 00 30 */	bne lbl_80076D08
/* 80076CDC  7F C3 F3 78 */	mr r3, r30
/* 80076CE0  48 00 07 1D */	bl ChkWallSort__9dBgS_AcchFv
/* 80076CE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80076CE8  41 82 00 14 */	beq lbl_80076CFC
/* 80076CEC  7F E3 FB 78 */	mr r3, r31
/* 80076CF0  7F C4 F3 78 */	mr r4, r30
/* 80076CF4  4B FF E6 81 */	bl WallCorrectSort__4dBgSFP9dBgS_Acch
/* 80076CF8  48 00 00 10 */	b lbl_80076D08
lbl_80076CFC:
/* 80076CFC  7F E3 FB 78 */	mr r3, r31
/* 80076D00  7F C4 F3 78 */	mr r4, r30
/* 80076D04  4B FF E5 49 */	bl WallCorrect__4dBgSFP9dBgS_Acch
lbl_80076D08:
/* 80076D08  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076D0C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80076D10  41 82 00 18 */	beq lbl_80076D28
/* 80076D14  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80076D18  41 82 00 10 */	beq lbl_80076D28
/* 80076D1C  7F C3 F3 78 */	mr r3, r30
/* 80076D20  7F E4 FB 78 */	mr r4, r31
/* 80076D24  4B FF F9 01 */	bl LineCheck__9dBgS_AcchFR4dBgS
lbl_80076D28:
/* 80076D28  C0 02 8C CC */	lfs f0, lit_4091(r2)
/* 80076D2C  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 80076D30  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076D34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80076D38  40 82 00 90 */	bne lbl_80076DC8
/* 80076D3C  38 7E 01 40 */	addi r3, r30, 0x140
/* 80076D40  7F C4 F3 78 */	mr r4, r30
/* 80076D44  48 1F 0E 75 */	bl SetExtChk__8cBgS_ChkFR8cBgS_Chk
/* 80076D48  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076D4C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80076D50  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076D54  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076D58  C0 43 00 00 */	lfs f2, 0(r3)
/* 80076D5C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80076D60  C0 23 00 04 */	lfs f1, 4(r3)
/* 80076D64  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80076D68  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076D6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80076D70  D0 5E 01 6C */	stfs f2, 0x16c(r30)
/* 80076D74  D0 3E 01 70 */	stfs f1, 0x170(r30)
/* 80076D78  D0 1E 01 74 */	stfs f0, 0x174(r30)
/* 80076D7C  7F E3 FB 78 */	mr r3, r31
/* 80076D80  38 9E 01 30 */	addi r4, r30, 0x130
/* 80076D84  4B FF E7 19 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80076D88  D0 3E 00 C4 */	stfs f1, 0xc4(r30)
/* 80076D8C  C0 02 8C CC */	lfs f0, lit_4091(r2)
/* 80076D90  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80076D94  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80076D98  41 82 00 30 */	beq lbl_80076DC8
/* 80076D9C  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076DA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076DA4  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80076DA8  EC 00 10 2A */	fadds f0, f0, f2
/* 80076DAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80076DB0  40 81 00 18 */	ble lbl_80076DC8
/* 80076DB4  EC 01 10 28 */	fsubs f0, f1, f2
/* 80076DB8  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 80076DBC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076DC0  60 00 02 00 */	ori r0, r0, 0x200
/* 80076DC4  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80076DC8:
/* 80076DC8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80076DCC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80076DD0  40 82 00 28 */	bne lbl_80076DF8
/* 80076DD4  54 60 06 B0 */	rlwinm r0, r3, 0, 0x1a, 0x18
/* 80076DD8  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076DDC  7F C3 F3 78 */	mr r3, r30
/* 80076DE0  7F E4 FB 78 */	mr r4, r31
/* 80076DE4  4B FF F5 6D */	bl GroundCheck__9dBgS_AcchFR4dBgS
/* 80076DE8  7F C3 F3 78 */	mr r3, r30
/* 80076DEC  7F E4 FB 78 */	mr r4, r31
/* 80076DF0  4B FF F7 5D */	bl GroundRoofProc__9dBgS_AcchFR4dBgS
/* 80076DF4  48 00 00 1C */	b lbl_80076E10
lbl_80076DF8:
/* 80076DF8  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80076DFC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076E00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80076E08  40 80 00 08 */	bge lbl_80076E10
/* 80076E0C  D0 23 00 04 */	stfs f1, 4(r3)
lbl_80076E10:
/* 80076E10  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80076E14  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80076E18  40 82 01 3C */	bne lbl_80076F54
/* 80076E1C  54 60 05 66 */	rlwinm r0, r3, 0, 0x15, 0x13
/* 80076E20  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076E24  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076E28  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80076E2C  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076E30  C0 02 8C C4 */	lfs f0, lit_4089(r2)
/* 80076E34  D0 1E 01 CC */	stfs f0, 0x1cc(r30)
/* 80076E38  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80076E3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80076E40  40 82 00 18 */	bne lbl_80076E58
/* 80076E44  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076E48  C0 23 00 04 */	lfs f1, 4(r3)
/* 80076E4C  C0 02 8C D8 */	lfs f0, lit_4554(r2)
/* 80076E50  EF A1 00 28 */	fsubs f29, f1, f0
/* 80076E54  48 00 00 08 */	b lbl_80076E5C
lbl_80076E58:
/* 80076E58  FF A0 08 90 */	fmr f29, f1
lbl_80076E5C:
/* 80076E5C  88 1E 01 D4 */	lbz r0, 0x1d4(r30)
/* 80076E60  28 00 00 01 */	cmplwi r0, 1
/* 80076E64  40 82 00 10 */	bne lbl_80076E74
/* 80076E68  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80076E6C  EF DD 00 2A */	fadds f30, f29, f0
/* 80076E70  48 00 00 68 */	b lbl_80076ED8
lbl_80076E74:
/* 80076E74  38 61 00 38 */	addi r3, r1, 0x38
/* 80076E78  48 00 21 7D */	bl __ct__12dBgS_RoofChkFv
/* 80076E7C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80076E80  48 00 20 6D */	bl SetUnderwaterRoof__16dBgS_PolyPassChkFv
/* 80076E84  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076E88  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076E8C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80076E90  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076E94  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80076E98  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076E9C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80076EA0  7F E3 FB 78 */	mr r3, r31
/* 80076EA4  38 81 00 38 */	addi r4, r1, 0x38
/* 80076EA8  4B FF E5 F5 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80076EAC  FF C0 08 90 */	fmr f30, f1
/* 80076EB0  C0 02 8C CC */	lfs f0, lit_4091(r2)
/* 80076EB4  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80076EB8  40 82 00 14 */	bne lbl_80076ECC
/* 80076EBC  C0 22 8C DC */	lfs f1, lit_4555(r2)
/* 80076EC0  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076EC4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076EC8  EF C1 00 2A */	fadds f30, f1, f0
lbl_80076ECC:
/* 80076ECC  38 61 00 38 */	addi r3, r1, 0x38
/* 80076ED0  38 80 FF FF */	li r4, -1
/* 80076ED4  48 00 21 BD */	bl __dt__12dBgS_RoofChkFv
lbl_80076ED8:
/* 80076ED8  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076EDC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076EE0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80076EE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076EE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80076EEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076EF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80076EF4  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 80076EF8  38 7E 01 80 */	addi r3, r30, 0x180
/* 80076EFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80076F00  FC 20 F0 90 */	fmr f1, f30
/* 80076F04  48 00 1C 8D */	bl Set__14dBgS_SplGrpChkFR4cXyzf
/* 80076F08  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 80076F0C  38 9E 00 14 */	addi r4, r30, 0x14
/* 80076F10  48 00 1E FD */	bl SetPassChkInfo__16dBgS_PolyPassChkFR16dBgS_PolyPassChk
/* 80076F14  7F E3 FB 78 */	mr r3, r31
/* 80076F18  38 9E 01 80 */	addi r4, r30, 0x180
/* 80076F1C  4B FF E6 49 */	bl SplGrpChk__4dBgSFP14dBgS_SplGrpChk
/* 80076F20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80076F24  41 82 00 30 */	beq lbl_80076F54
/* 80076F28  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076F2C  60 00 08 00 */	ori r0, r0, 0x800
/* 80076F30  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80076F34  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 80076F38  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076F3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80076F44  40 81 00 10 */	ble lbl_80076F54
/* 80076F48  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076F4C  60 00 10 00 */	ori r0, r0, 0x1000
/* 80076F50  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80076F54:
/* 80076F54  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80076F58  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80076F5C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80076F60  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80076F64  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80076F68  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80076F6C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80076F70  48 2E B2 B9 */	bl _restgpr_29
/* 80076F74  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80076F78  7C 08 03 A6 */	mtlr r0
/* 80076F7C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80076F80  4E 80 00 20 */	blr 
