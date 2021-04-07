lbl_80180738:
/* 80180738  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8018073C  7C 08 02 A6 */	mflr r0
/* 80180740  90 01 01 54 */	stw r0, 0x154(r1)
/* 80180744  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80180748  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 8018074C  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 80180750  7C 7F 1B 78 */	mr r31, r3
/* 80180754  A8 03 01 36 */	lha r0, 0x136(r3)
/* 80180758  2C 00 00 00 */	cmpwi r0, 0
/* 8018075C  40 81 02 BC */	ble lbl_80180A18
/* 80180760  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 80180764  38 03 00 01 */	addi r0, r3, 1
/* 80180768  90 1F 06 68 */	stw r0, 0x668(r31)
/* 8018076C  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80180770  A8 9F 01 36 */	lha r4, 0x136(r31)
/* 80180774  7C 00 20 00 */	cmpw r0, r4
/* 80180778  41 80 00 10 */	blt lbl_80180788
/* 8018077C  38 00 00 00 */	li r0, 0
/* 80180780  B0 1F 01 36 */	sth r0, 0x136(r31)
/* 80180784  48 00 02 9C */	b lbl_80180A20
lbl_80180788:
/* 80180788  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8018078C  C8 62 9C 98 */	lfd f3, lit_4448(r2)
/* 80180790  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80180794  90 01 01 24 */	stw r0, 0x124(r1)
/* 80180798  3C 60 43 30 */	lis r3, 0x4330
/* 8018079C  90 61 01 20 */	stw r3, 0x120(r1)
/* 801807A0  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 801807A4  EC 20 18 28 */	fsubs f1, f0, f3
/* 801807A8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801807AC  90 01 01 2C */	stw r0, 0x12c(r1)
/* 801807B0  90 61 01 28 */	stw r3, 0x128(r1)
/* 801807B4  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 801807B8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801807BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801807C0  EC 22 00 28 */	fsubs f1, f2, f0
/* 801807C4  4B F0 79 79 */	bl rationalBezierRatio__8dCamMathFff
/* 801807C8  FF E0 08 90 */	fmr f31, f1
/* 801807CC  38 61 00 80 */	addi r3, r1, 0x80
/* 801807D0  38 9F 01 18 */	addi r4, r31, 0x118
/* 801807D4  38 BF 00 64 */	addi r5, r31, 0x64
/* 801807D8  48 0E 63 5D */	bl __mi__4cXyzCFRC3Vec
/* 801807DC  38 61 00 74 */	addi r3, r1, 0x74
/* 801807E0  38 81 00 80 */	addi r4, r1, 0x80
/* 801807E4  FC 20 F8 90 */	fmr f1, f31
/* 801807E8  48 0E 63 9D */	bl __ml__4cXyzCFf
/* 801807EC  38 61 00 68 */	addi r3, r1, 0x68
/* 801807F0  38 9F 00 64 */	addi r4, r31, 0x64
/* 801807F4  38 A1 00 74 */	addi r5, r1, 0x74
/* 801807F8  48 0E 62 ED */	bl __pl__4cXyzCFRC3Vec
/* 801807FC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80180800  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80180804  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80180808  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8018080C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80180810  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80180814  38 61 00 5C */	addi r3, r1, 0x5c
/* 80180818  7F E4 FB 78 */	mr r4, r31
/* 8018081C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80180820  4B F1 6E FD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80180824  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80180828  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8018082C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80180830  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80180834  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80180838  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8018083C  38 61 00 AC */	addi r3, r1, 0xac
/* 80180840  4B EF 75 65 */	bl __ct__14dBgS_CamLinChkFv
/* 80180844  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80180848  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8018084C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80180850  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80180854  70 00 00 B7 */	andi. r0, r0, 0xb7
/* 80180858  41 82 00 74 */	beq lbl_801808CC
/* 8018085C  7F E3 FB 78 */	mr r3, r31
/* 80180860  38 81 00 8C */	addi r4, r1, 0x8c
/* 80180864  38 BF 00 30 */	addi r5, r31, 0x30
/* 80180868  38 C1 00 AC */	addi r6, r1, 0xac
/* 8018086C  38 E0 40 B7 */	li r7, 0x40b7
/* 80180870  4B FE 50 51 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80180874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80180878  41 82 00 54 */	beq lbl_801808CC
/* 8018087C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80180880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80180884  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80180888  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8018088C  38 A1 00 98 */	addi r5, r1, 0x98
/* 80180890  4B EF 3E B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80180894  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80180898  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8018089C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 801808A0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 801808A4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 801808A8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 801808AC  38 61 00 50 */	addi r3, r1, 0x50
/* 801808B0  38 81 00 98 */	addi r4, r1, 0x98
/* 801808B4  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 801808B8  48 0E 62 CD */	bl __ml__4cXyzCFf
/* 801808BC  38 7F 00 30 */	addi r3, r31, 0x30
/* 801808C0  38 81 00 50 */	addi r4, r1, 0x50
/* 801808C4  7C 65 1B 78 */	mr r5, r3
/* 801808C8  48 1C 67 C9 */	bl PSVECAdd
lbl_801808CC:
/* 801808CC  38 61 00 44 */	addi r3, r1, 0x44
/* 801808D0  38 9F 01 24 */	addi r4, r31, 0x124
/* 801808D4  38 BF 00 70 */	addi r5, r31, 0x70
/* 801808D8  48 0E 62 5D */	bl __mi__4cXyzCFRC3Vec
/* 801808DC  38 61 00 38 */	addi r3, r1, 0x38
/* 801808E0  38 81 00 44 */	addi r4, r1, 0x44
/* 801808E4  FC 20 F8 90 */	fmr f1, f31
/* 801808E8  48 0E 62 9D */	bl __ml__4cXyzCFf
/* 801808EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801808F0  38 9F 00 70 */	addi r4, r31, 0x70
/* 801808F4  38 A1 00 38 */	addi r5, r1, 0x38
/* 801808F8  48 0E 61 ED */	bl __pl__4cXyzCFRC3Vec
/* 801808FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80180900  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80180904  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80180908  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8018090C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80180910  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80180914  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80180918  70 00 00 B7 */	andi. r0, r0, 0xb7
/* 8018091C  41 82 00 74 */	beq lbl_80180990
/* 80180920  7F E3 FB 78 */	mr r3, r31
/* 80180924  38 9F 00 30 */	addi r4, r31, 0x30
/* 80180928  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8018092C  38 C1 00 AC */	addi r6, r1, 0xac
/* 80180930  38 E0 40 B7 */	li r7, 0x40b7
/* 80180934  4B FE 4F 8D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80180938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018093C  41 82 00 54 */	beq lbl_80180990
/* 80180940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80180944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80180948  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8018094C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80180950  38 A1 00 98 */	addi r5, r1, 0x98
/* 80180954  4B EF 3D F1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80180958  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8018095C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80180960  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80180964  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80180968  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8018096C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80180970  38 61 00 20 */	addi r3, r1, 0x20
/* 80180974  38 81 00 98 */	addi r4, r1, 0x98
/* 80180978  C0 3F 0A B4 */	lfs f1, 0xab4(r31)
/* 8018097C  48 0E 62 09 */	bl __ml__4cXyzCFf
/* 80180980  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80180984  38 81 00 20 */	addi r4, r1, 0x20
/* 80180988  7C 65 1B 78 */	mr r5, r3
/* 8018098C  48 1C 67 05 */	bl PSVECAdd
lbl_80180990:
/* 80180990  38 61 00 14 */	addi r3, r1, 0x14
/* 80180994  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80180998  38 BF 00 30 */	addi r5, r31, 0x30
/* 8018099C  48 0E 61 99 */	bl __mi__4cXyzCFRC3Vec
/* 801809A0  38 7F 00 28 */	addi r3, r31, 0x28
/* 801809A4  38 81 00 14 */	addi r4, r1, 0x14
/* 801809A8  48 0F 10 C9 */	bl Val__7cSGlobeFRC4cXyz
/* 801809AC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 801809B0  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 801809B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801809B8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801809BC  EC 01 00 2A */	fadds f0, f1, f0
/* 801809C0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 801809C4  38 61 00 10 */	addi r3, r1, 0x10
/* 801809C8  38 9F 01 34 */	addi r4, r31, 0x134
/* 801809CC  38 BF 00 7C */	addi r5, r31, 0x7c
/* 801809D0  48 0F 07 D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801809D4  38 61 00 0C */	addi r3, r1, 0xc
/* 801809D8  38 81 00 10 */	addi r4, r1, 0x10
/* 801809DC  FC 20 F8 90 */	fmr f1, f31
/* 801809E0  48 0F 08 85 */	bl __ml__7cSAngleCFf
/* 801809E4  38 61 00 08 */	addi r3, r1, 8
/* 801809E8  38 9F 00 7C */	addi r4, r31, 0x7c
/* 801809EC  38 A1 00 0C */	addi r5, r1, 0xc
/* 801809F0  48 0F 07 85 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801809F4  A8 01 00 08 */	lha r0, 8(r1)
/* 801809F8  B0 1F 00 54 */	sth r0, 0x54(r31)
/* 801809FC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80180A00  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80180A04  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80180A08  38 61 00 AC */	addi r3, r1, 0xac
/* 80180A0C  38 80 FF FF */	li r4, -1
/* 80180A10  4B EF 73 F1 */	bl __dt__14dBgS_CamLinChkFv
/* 80180A14  48 00 00 0C */	b lbl_80180A20
lbl_80180A18:
/* 80180A18  38 00 00 00 */	li r0, 0
/* 80180A1C  B0 1F 01 36 */	sth r0, 0x136(r31)
lbl_80180A20:
/* 80180A20  A8 7F 01 36 */	lha r3, 0x136(r31)
/* 80180A24  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80180A28  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80180A2C  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 80180A30  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80180A34  7C 08 03 A6 */	mtlr r0
/* 80180A38  38 21 01 50 */	addi r1, r1, 0x150
/* 80180A3C  4E 80 00 20 */	blr 
