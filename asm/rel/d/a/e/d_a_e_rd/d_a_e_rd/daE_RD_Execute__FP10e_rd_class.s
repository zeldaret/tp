lbl_80514640:
/* 80514640  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80514644  7C 08 02 A6 */	mflr r0
/* 80514648  90 01 01 84 */	stw r0, 0x184(r1)
/* 8051464C  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80514650  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 80514654  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 80514658  F3 C1 01 68 */	psq_st f30, 360(r1), 0, 0 /* qr0 */
/* 8051465C  39 61 01 60 */	addi r11, r1, 0x160
/* 80514660  4B E4 DB 45 */	bl _savegpr_15
/* 80514664  7C 7F 1B 78 */	mr r31, r3
/* 80514668  3C 60 80 52 */	lis r3, lit_1109@ha /* 0x80519140@ha */
/* 8051466C  3B A3 91 40 */	addi r29, r3, lit_1109@l /* 0x80519140@l */
/* 80514670  3C 60 80 52 */	lis r3, cNullVec__6Z2Calc@ha /* 0x805189A8@ha */
/* 80514674  3A E3 89 A8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x805189A8@l */
/* 80514678  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8051467C  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 80514680  80 1D 01 FC */	lwz r0, 0x1fc(r29)
/* 80514684  2C 00 00 00 */	cmpwi r0, 0
/* 80514688  40 82 00 58 */	bne lbl_805146E0
/* 8051468C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80514690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80514694  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80514698  28 00 00 00 */	cmplwi r0, 0
/* 8051469C  41 82 00 44 */	beq lbl_805146E0
/* 805146A0  88 1D 00 C1 */	lbz r0, 0xc1(r29)
/* 805146A4  28 00 00 00 */	cmplwi r0, 0
/* 805146A8  41 82 00 0C */	beq lbl_805146B4
/* 805146AC  38 60 00 01 */	li r3, 1
/* 805146B0  48 00 1C E8 */	b lbl_80516398
lbl_805146B4:
/* 805146B4  4B B0 3B F5 */	bl cDmrNowMidnaTalk__Fv
/* 805146B8  2C 03 00 00 */	cmpwi r3, 0
/* 805146BC  40 82 00 1C */	bne lbl_805146D8
/* 805146C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805146C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805146C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805146CC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805146D0  28 00 00 03 */	cmplwi r0, 3
/* 805146D4  40 82 00 0C */	bne lbl_805146E0
lbl_805146D8:
/* 805146D8  38 60 00 01 */	li r3, 1
/* 805146DC  48 00 1C BC */	b lbl_80516398
lbl_805146E0:
/* 805146E0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 805146E4  28 00 00 0B */	cmplwi r0, 0xb
/* 805146E8  40 82 00 14 */	bne lbl_805146FC
/* 805146EC  7F E3 FB 78 */	mr r3, r31
/* 805146F0  4B B0 55 8D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805146F4  38 60 00 01 */	li r3, 1
/* 805146F8  48 00 1C A0 */	b lbl_80516398
lbl_805146FC:
/* 805146FC  A8 7D 00 A4 */	lha r3, 0xa4(r29)
/* 80514700  2C 03 00 00 */	cmpwi r3, 0
/* 80514704  41 82 00 0C */	beq lbl_80514710
/* 80514708  38 03 FF FF */	addi r0, r3, -1
/* 8051470C  B0 1D 00 A4 */	sth r0, 0xa4(r29)
lbl_80514710:
/* 80514710  A8 7F 09 70 */	lha r3, 0x970(r31)
/* 80514714  38 03 00 01 */	addi r0, r3, 1
/* 80514718  B0 1F 09 70 */	sth r0, 0x970(r31)
/* 8051471C  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80514720  7C 00 07 75 */	extsb. r0, r0
/* 80514724  40 82 00 10 */	bne lbl_80514734
/* 80514728  88 1F 12 98 */	lbz r0, 0x1298(r31)
/* 8051472C  98 1F 12 97 */	stb r0, 0x1297(r31)
/* 80514730  48 00 00 64 */	b lbl_80514794
lbl_80514734:
/* 80514734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80514738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051473C  82 23 5D AC */	lwz r17, 0x5dac(r3)
/* 80514740  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80514744  3C 80 80 52 */	lis r4, d_a_e_rd__stringBase0@ha /* 0x80518968@ha */
/* 80514748  38 84 89 68 */	addi r4, r4, d_a_e_rd__stringBase0@l /* 0x80518968@l */
/* 8051474C  38 84 00 16 */	addi r4, r4, 0x16
/* 80514750  4B E5 42 45 */	bl strcmp
/* 80514754  2C 03 00 00 */	cmpwi r3, 0
/* 80514758  40 82 00 20 */	bne lbl_80514778
/* 8051475C  C0 31 04 D4 */	lfs f1, 0x4d4(r17)
/* 80514760  C0 1E 03 54 */	lfs f0, 0x354(r30)
/* 80514764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80514768  40 80 00 10 */	bge lbl_80514778
/* 8051476C  38 00 00 32 */	li r0, 0x32
/* 80514770  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80514774  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_80514778:
/* 80514778  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 8051477C  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l /* 0x80450C98@l */
/* 80514780  88 64 00 00 */	lbz r3, 0(r4)
/* 80514784  28 03 00 00 */	cmplwi r3, 0
/* 80514788  41 82 00 0C */	beq lbl_80514794
/* 8051478C  38 03 FF FF */	addi r0, r3, -1
/* 80514790  98 04 00 00 */	stb r0, 0(r4)
lbl_80514794:
/* 80514794  38 60 00 00 */	li r3, 0
/* 80514798  38 00 00 04 */	li r0, 4
/* 8051479C  7C 09 03 A6 */	mtctr r0
lbl_805147A0:
/* 805147A0  38 A3 09 90 */	addi r5, r3, 0x990
/* 805147A4  7C 9F 2A AE */	lhax r4, r31, r5
/* 805147A8  2C 04 00 00 */	cmpwi r4, 0
/* 805147AC  41 82 00 0C */	beq lbl_805147B8
/* 805147B0  38 04 FF FF */	addi r0, r4, -1
/* 805147B4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805147B8:
/* 805147B8  38 63 00 02 */	addi r3, r3, 2
/* 805147BC  42 00 FF E4 */	bdnz lbl_805147A0
/* 805147C0  A8 7F 09 98 */	lha r3, 0x998(r31)
/* 805147C4  2C 03 00 00 */	cmpwi r3, 0
/* 805147C8  41 82 00 0C */	beq lbl_805147D4
/* 805147CC  38 03 FF FF */	addi r0, r3, -1
/* 805147D0  B0 1F 09 98 */	sth r0, 0x998(r31)
lbl_805147D4:
/* 805147D4  A8 7F 0A F0 */	lha r3, 0xaf0(r31)
/* 805147D8  2C 03 00 00 */	cmpwi r3, 0
/* 805147DC  41 82 00 0C */	beq lbl_805147E8
/* 805147E0  38 03 FF FF */	addi r0, r3, -1
/* 805147E4  B0 1F 0A F0 */	sth r0, 0xaf0(r31)
lbl_805147E8:
/* 805147E8  A8 7F 09 9A */	lha r3, 0x99a(r31)
/* 805147EC  2C 03 00 00 */	cmpwi r3, 0
/* 805147F0  41 82 00 0C */	beq lbl_805147FC
/* 805147F4  38 03 FF FF */	addi r0, r3, -1
/* 805147F8  B0 1F 09 9A */	sth r0, 0x99a(r31)
lbl_805147FC:
/* 805147FC  A8 7F 09 9E */	lha r3, 0x99e(r31)
/* 80514800  2C 03 00 00 */	cmpwi r3, 0
/* 80514804  41 82 00 0C */	beq lbl_80514810
/* 80514808  38 03 FF FF */	addi r0, r3, -1
/* 8051480C  B0 1F 09 9E */	sth r0, 0x99e(r31)
lbl_80514810:
/* 80514810  A8 7F 09 9C */	lha r3, 0x99c(r31)
/* 80514814  2C 03 00 00 */	cmpwi r3, 0
/* 80514818  41 82 00 0C */	beq lbl_80514824
/* 8051481C  38 03 FF FF */	addi r0, r3, -1
/* 80514820  B0 1F 09 9C */	sth r0, 0x99c(r31)
lbl_80514824:
/* 80514824  7F E3 FB 78 */	mr r3, r31
/* 80514828  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8051482C  4B FF 12 69 */	bl otoCheck__FP10fopAc_ac_cf
/* 80514830  2C 03 00 00 */	cmpwi r3, 0
/* 80514834  40 82 00 1C */	bne lbl_80514850
/* 80514838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051483C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80514840  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80514844  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80514848  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8051484C  41 82 00 24 */	beq lbl_80514870
lbl_80514850:
/* 80514850  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80514854  4B D5 31 01 */	bl cM_rndF__Ff
/* 80514858  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8051485C  EC 00 08 2A */	fadds f0, f0, f1
/* 80514860  FC 00 00 1E */	fctiwz f0, f0
/* 80514864  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80514868  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 8051486C  98 1F 09 A1 */	stb r0, 0x9a1(r31)
lbl_80514870:
/* 80514870  88 7F 09 A1 */	lbz r3, 0x9a1(r31)
/* 80514874  7C 60 07 75 */	extsb. r0, r3
/* 80514878  41 82 00 0C */	beq lbl_80514884
/* 8051487C  38 03 FF FF */	addi r0, r3, -1
/* 80514880  98 1F 09 A1 */	stb r0, 0x9a1(r31)
lbl_80514884:
/* 80514884  38 00 00 00 */	li r0, 0
/* 80514888  98 1F 09 A2 */	stb r0, 0x9a2(r31)
/* 8051488C  38 00 00 01 */	li r0, 1
/* 80514890  98 1F 09 AD */	stb r0, 0x9ad(r31)
/* 80514894  7F E3 FB 78 */	mr r3, r31
/* 80514898  4B FF C5 55 */	bl action__FP10e_rd_class
/* 8051489C  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805148A0  7C 00 07 75 */	extsb. r0, r0
/* 805148A4  41 82 00 0C */	beq lbl_805148B0
/* 805148A8  38 00 00 00 */	li r0, 0
/* 805148AC  98 1F 09 AD */	stb r0, 0x9ad(r31)
lbl_805148B0:
/* 805148B0  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805148B4  2C 00 00 02 */	cmpwi r0, 2
/* 805148B8  41 82 02 28 */	beq lbl_80514AE0
/* 805148BC  A8 1F 0A F0 */	lha r0, 0xaf0(r31)
/* 805148C0  2C 00 00 00 */	cmpwi r0, 0
/* 805148C4  40 82 02 1C */	bne lbl_80514AE0
/* 805148C8  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 805148CC  2C 00 00 2A */	cmpwi r0, 0x2a
/* 805148D0  41 82 02 10 */	beq lbl_80514AE0
/* 805148D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805148D8  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 805148DC  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 805148E0  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 805148E4  C0 1F 09 EC */	lfs f0, 0x9ec(r31)
/* 805148E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805148EC  41 82 00 58 */	beq lbl_80514944
/* 805148F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805148F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805148F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805148FC  A8 9F 0A 0E */	lha r4, 0xa0e(r31)
/* 80514900  4B AF 7A DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80514904  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80514908  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8051490C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80514910  C0 1F 0A EC */	lfs f0, 0xaec(r31)
/* 80514914  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80514918  38 61 00 FC */	addi r3, r1, 0xfc
/* 8051491C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80514920  4B D5 C5 CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80514924  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80514928  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8051492C  C0 1F 09 EC */	lfs f0, 0x9ec(r31)
/* 80514930  EC 21 00 32 */	fmuls f1, f1, f0
/* 80514934  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80514938  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8051493C  4B D5 B1 01 */	bl cLib_addCalc2__FPffff
/* 80514940  48 00 00 14 */	b lbl_80514954
lbl_80514944:
/* 80514944  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80514948  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8051494C  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80514950  4B D5 B1 31 */	bl cLib_addCalc0__FPfff
lbl_80514954:
/* 80514954  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514958  2C 00 00 12 */	cmpwi r0, 0x12
/* 8051495C  40 82 00 2C */	bne lbl_80514988
/* 80514960  A8 1F 0A 0C */	lha r0, 0xa0c(r31)
/* 80514964  2C 00 00 00 */	cmpwi r0, 0
/* 80514968  41 82 00 20 */	beq lbl_80514988
/* 8051496C  88 1F 0A 1F */	lbz r0, 0xa1f(r31)
/* 80514970  7C 00 07 75 */	extsb. r0, r0
/* 80514974  40 82 00 14 */	bne lbl_80514988
/* 80514978  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 8051497C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80514980  EC 01 00 2A */	fadds f0, f1, f0
/* 80514984  D0 01 00 F4 */	stfs f0, 0xf4(r1)
lbl_80514988:
/* 80514988  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8051498C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80514990  7C 65 1B 78 */	mr r5, r3
/* 80514994  4B E3 26 FD */	bl PSVECAdd
/* 80514998  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 8051499C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805149A0  7C 65 1B 78 */	mr r5, r3
/* 805149A4  4B E3 26 ED */	bl PSVECAdd
/* 805149A8  38 7F 0B 44 */	addi r3, r31, 0xb44
/* 805149AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805149B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805149B4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805149B8  4B B6 20 F5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805149BC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805149C0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805149C4  7C 65 1B 78 */	mr r5, r3
/* 805149C8  4B E3 26 ED */	bl PSVECSubtract
/* 805149CC  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 805149D0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805149D4  7C 65 1B 78 */	mr r5, r3
/* 805149D8  4B E3 26 DD */	bl PSVECSubtract
/* 805149DC  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 805149E0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805149E4  40 82 00 64 */	bne lbl_80514A48
/* 805149E8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805149EC  C0 1E 03 58 */	lfs f0, 0x358(r30)
/* 805149F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805149F4  40 80 00 B0 */	bge lbl_80514AA4
/* 805149F8  A8 7F 0A F2 */	lha r3, 0xaf2(r31)
/* 805149FC  38 03 00 01 */	addi r0, r3, 1
/* 80514A00  B0 1F 0A F2 */	sth r0, 0xaf2(r31)
/* 80514A04  A8 1F 0A F2 */	lha r0, 0xaf2(r31)
/* 80514A08  2C 00 00 14 */	cmpwi r0, 0x14
/* 80514A0C  40 82 00 98 */	bne lbl_80514AA4
/* 80514A10  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80514A14  7C 00 07 75 */	extsb. r0, r0
/* 80514A18  40 82 00 8C */	bne lbl_80514AA4
/* 80514A1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 80514A20  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 80514A24  90 01 00 48 */	stw r0, 0x48(r1)
/* 80514A28  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514A2C  38 81 00 48 */	addi r4, r1, 0x48
/* 80514A30  38 A0 FF FF */	li r5, -1
/* 80514A34  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514A38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514A3C  7D 89 03 A6 */	mtctr r12
/* 80514A40  4E 80 04 21 */	bctrl 
/* 80514A44  48 00 00 60 */	b lbl_80514AA4
lbl_80514A48:
/* 80514A48  A8 1F 0A F2 */	lha r0, 0xaf2(r31)
/* 80514A4C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80514A50  41 80 00 4C */	blt lbl_80514A9C
/* 80514A54  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 80514A58  28 00 00 0D */	cmplwi r0, 0xd
/* 80514A5C  41 82 00 40 */	beq lbl_80514A9C
/* 80514A60  28 00 00 0E */	cmplwi r0, 0xe
/* 80514A64  41 82 00 38 */	beq lbl_80514A9C
/* 80514A68  38 00 00 15 */	li r0, 0x15
/* 80514A6C  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80514A70  38 60 00 00 */	li r3, 0
/* 80514A74  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 80514A78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80514A7C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80514A80  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80514A84  D0 1F 09 EC */	stfs f0, 0x9ec(r31)
/* 80514A88  38 00 D0 00 */	li r0, -12288
/* 80514A8C  B0 1F 0A 0C */	sth r0, 0xa0c(r31)
/* 80514A90  38 00 03 E8 */	li r0, 0x3e8
/* 80514A94  B0 1F 09 98 */	sth r0, 0x998(r31)
/* 80514A98  B0 7F 05 62 */	sth r3, 0x562(r31)
lbl_80514A9C:
/* 80514A9C  38 00 00 00 */	li r0, 0
/* 80514AA0  B0 1F 0A F2 */	sth r0, 0xaf2(r31)
lbl_80514AA4:
/* 80514AA4  38 00 00 00 */	li r0, 0
/* 80514AA8  98 1F 12 94 */	stb r0, 0x1294(r31)
/* 80514AAC  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 80514AB0  C0 1F 0B DC */	lfs f0, 0xbdc(r31)
/* 80514AB4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80514AB8  41 82 00 28 */	beq lbl_80514AE0
/* 80514ABC  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 80514AC0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80514AC4  41 82 00 1C */	beq lbl_80514AE0
/* 80514AC8  C0 3F 0D 10 */	lfs f1, 0xd10(r31)
/* 80514ACC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80514AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80514AD4  40 81 00 0C */	ble lbl_80514AE0
/* 80514AD8  38 00 00 01 */	li r0, 1
/* 80514ADC  98 1F 12 94 */	stb r0, 0x1294(r31)
lbl_80514AE0:
/* 80514AE0  88 1F 0A FB */	lbz r0, 0xafb(r31)
/* 80514AE4  7C 00 07 75 */	extsb. r0, r0
/* 80514AE8  40 82 06 3C */	bne lbl_80515124
/* 80514AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514AF4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80514AF8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80514AFC  C0 1F 09 C0 */	lfs f0, 0x9c0(r31)
/* 80514B00  EC 42 00 2A */	fadds f2, f2, f0
/* 80514B04  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80514B08  4B E3 1D E1 */	bl PSMTXTrans
/* 80514B0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B14  A8 9F 0A 12 */	lha r4, 0xa12(r31)
/* 80514B18  4B AF 78 85 */	bl mDoMtx_XrotM__FPA4_fs
/* 80514B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B24  A8 9F 0A 16 */	lha r4, 0xa16(r31)
/* 80514B28  4B AF 79 A5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80514B2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B34  A8 9F 0A 0E */	lha r4, 0xa0e(r31)
/* 80514B38  4B AF 78 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80514B3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B44  A8 9F 0A 0C */	lha r4, 0xa0c(r31)
/* 80514B48  4B AF 78 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80514B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B54  A8 1F 0A 0E */	lha r0, 0xa0e(r31)
/* 80514B58  7C 00 00 D0 */	neg r0, r0
/* 80514B5C  7C 04 07 34 */	extsh r4, r0
/* 80514B60  4B AF 78 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80514B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B6C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80514B70  4B AF 78 C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80514B74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B7C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80514B80  4B AF 78 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 80514B84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514B88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514B8C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80514B90  4B AF 79 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80514B94  38 7D 00 54 */	addi r3, r29, 0x54
/* 80514B98  C0 23 00 08 */	lfs f1, 8(r3)
/* 80514B9C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80514BA0  EF E1 00 32 */	fmuls f31, f1, f0
/* 80514BA4  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80514BA8  7C 00 07 75 */	extsb. r0, r0
/* 80514BAC  41 82 00 0C */	beq lbl_80514BB8
/* 80514BB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80514BB4  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80514BB8:
/* 80514BB8  FC 20 F8 90 */	fmr f1, f31
/* 80514BBC  FC 40 F8 90 */	fmr f2, f31
/* 80514BC0  FC 60 F8 90 */	fmr f3, f31
/* 80514BC4  4B AF 82 75 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80514BC8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514BCC  80 83 00 04 */	lwz r4, 4(r3)
/* 80514BD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80514BD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80514BD8  38 84 00 24 */	addi r4, r4, 0x24
/* 80514BDC  4B E3 18 D5 */	bl PSMTXCopy
/* 80514BE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80514BE4  7C 03 07 74 */	extsb r3, r0
/* 80514BE8  4B B1 84 85 */	bl dComIfGp_getReverb__Fi
/* 80514BEC  7C 65 1B 78 */	mr r5, r3
/* 80514BF0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514BF4  38 80 00 00 */	li r4, 0
/* 80514BF8  4B AF C4 B9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80514BFC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514C00  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80514C04  FC 00 00 1E */	fctiwz f0, f0
/* 80514C08  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80514C0C  82 21 01 0C */	lwz r17, 0x10c(r1)
/* 80514C10  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514C14  2C 00 00 32 */	cmpwi r0, 0x32
/* 80514C18  40 82 00 3C */	bne lbl_80514C54
/* 80514C1C  2C 11 00 01 */	cmpwi r17, 1
/* 80514C20  41 82 00 0C */	beq lbl_80514C2C
/* 80514C24  2C 11 00 0A */	cmpwi r17, 0xa
/* 80514C28  40 82 00 2C */	bne lbl_80514C54
lbl_80514C2C:
/* 80514C2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070036@ha */
/* 80514C30  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00070036@l */
/* 80514C34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80514C38  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514C3C  38 81 00 44 */	addi r4, r1, 0x44
/* 80514C40  38 A0 FF FF */	li r5, -1
/* 80514C44  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514C48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514C4C  7D 89 03 A6 */	mtctr r12
/* 80514C50  4E 80 04 21 */	bctrl 
lbl_80514C54:
/* 80514C54  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514C58  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80514C5C  40 82 00 3C */	bne lbl_80514C98
/* 80514C60  2C 11 00 05 */	cmpwi r17, 5
/* 80514C64  41 82 00 0C */	beq lbl_80514C70
/* 80514C68  2C 11 00 1A */	cmpwi r17, 0x1a
/* 80514C6C  40 82 00 2C */	bne lbl_80514C98
lbl_80514C70:
/* 80514C70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070036@ha */
/* 80514C74  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00070036@l */
/* 80514C78  90 01 00 40 */	stw r0, 0x40(r1)
/* 80514C7C  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514C80  38 81 00 40 */	addi r4, r1, 0x40
/* 80514C84  38 A0 FF FF */	li r5, -1
/* 80514C88  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514C8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514C90  7D 89 03 A6 */	mtctr r12
/* 80514C94  4E 80 04 21 */	bctrl 
lbl_80514C98:
/* 80514C98  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514C9C  2C 00 00 39 */	cmpwi r0, 0x39
/* 80514CA0  40 82 00 0C */	bne lbl_80514CAC
/* 80514CA4  2C 11 00 0A */	cmpwi r17, 0xa
/* 80514CA8  41 82 00 24 */	beq lbl_80514CCC
lbl_80514CAC:
/* 80514CAC  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80514CB0  40 82 00 0C */	bne lbl_80514CBC
/* 80514CB4  2C 11 00 05 */	cmpwi r17, 5
/* 80514CB8  41 82 00 14 */	beq lbl_80514CCC
lbl_80514CBC:
/* 80514CBC  2C 00 00 04 */	cmpwi r0, 4
/* 80514CC0  40 82 00 34 */	bne lbl_80514CF4
/* 80514CC4  2C 11 00 0A */	cmpwi r17, 0xa
/* 80514CC8  40 82 00 2C */	bne lbl_80514CF4
lbl_80514CCC:
/* 80514CCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070035@ha */
/* 80514CD0  38 03 00 35 */	addi r0, r3, 0x0035 /* 0x00070035@l */
/* 80514CD4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80514CD8  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514CDC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80514CE0  38 A0 FF FF */	li r5, -1
/* 80514CE4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514CE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514CEC  7D 89 03 A6 */	mtctr r12
/* 80514CF0  4E 80 04 21 */	bctrl 
lbl_80514CF4:
/* 80514CF4  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514CF8  2C 00 00 41 */	cmpwi r0, 0x41
/* 80514CFC  40 82 00 34 */	bne lbl_80514D30
/* 80514D00  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514D04  38 63 00 0C */	addi r3, r3, 0xc
/* 80514D08  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80514D0C  4B E1 37 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80514D10  2C 03 00 00 */	cmpwi r3, 0
/* 80514D14  40 82 00 60 */	bne lbl_80514D74
/* 80514D18  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514D1C  38 63 00 0C */	addi r3, r3, 0xc
/* 80514D20  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80514D24  4B E1 37 09 */	bl checkPass__12J3DFrameCtrlFf
/* 80514D28  2C 03 00 00 */	cmpwi r3, 0
/* 80514D2C  40 82 00 48 */	bne lbl_80514D74
lbl_80514D30:
/* 80514D30  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514D34  2C 00 00 32 */	cmpwi r0, 0x32
/* 80514D38  41 82 00 0C */	beq lbl_80514D44
/* 80514D3C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80514D40  40 82 00 9C */	bne lbl_80514DDC
lbl_80514D44:
/* 80514D44  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514D48  38 63 00 0C */	addi r3, r3, 0xc
/* 80514D4C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80514D50  4B E1 36 DD */	bl checkPass__12J3DFrameCtrlFf
/* 80514D54  2C 03 00 00 */	cmpwi r3, 0
/* 80514D58  40 82 00 1C */	bne lbl_80514D74
/* 80514D5C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514D60  38 63 00 0C */	addi r3, r3, 0xc
/* 80514D64  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80514D68  4B E1 36 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 80514D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80514D70  41 82 00 6C */	beq lbl_80514DDC
lbl_80514D74:
/* 80514D74  88 1F 12 94 */	lbz r0, 0x1294(r31)
/* 80514D78  7C 00 07 75 */	extsb. r0, r0
/* 80514D7C  41 82 00 34 */	beq lbl_80514DB0
/* 80514D80  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030033@ha */
/* 80514D84  38 03 00 33 */	addi r0, r3, 0x0033 /* 0x00030033@l */
/* 80514D88  90 01 00 38 */	stw r0, 0x38(r1)
/* 80514D8C  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514D90  38 81 00 38 */	addi r4, r1, 0x38
/* 80514D94  38 A0 00 00 */	li r5, 0
/* 80514D98  38 C0 FF FF */	li r6, -1
/* 80514D9C  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514DA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80514DA4  7D 89 03 A6 */	mtctr r12
/* 80514DA8  4E 80 04 21 */	bctrl 
/* 80514DAC  48 00 00 30 */	b lbl_80514DDC
lbl_80514DB0:
/* 80514DB0  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030032@ha */
/* 80514DB4  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00030032@l */
/* 80514DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80514DBC  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514DC0  38 81 00 34 */	addi r4, r1, 0x34
/* 80514DC4  38 A0 00 00 */	li r5, 0
/* 80514DC8  38 C0 FF FF */	li r6, -1
/* 80514DCC  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514DD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80514DD4  7D 89 03 A6 */	mtctr r12
/* 80514DD8  4E 80 04 21 */	bctrl 
lbl_80514DDC:
/* 80514DDC  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80514DE0  7C 00 07 75 */	extsb. r0, r0
/* 80514DE4  41 82 00 9C */	beq lbl_80514E80
/* 80514DE8  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514DEC  2C 00 00 21 */	cmpwi r0, 0x21
/* 80514DF0  40 82 00 48 */	bne lbl_80514E38
/* 80514DF4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514DF8  38 63 00 0C */	addi r3, r3, 0xc
/* 80514DFC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80514E00  4B E1 36 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80514E04  2C 03 00 00 */	cmpwi r3, 0
/* 80514E08  41 82 00 78 */	beq lbl_80514E80
/* 80514E0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007012C@ha */
/* 80514E10  38 03 01 2C */	addi r0, r3, 0x012C /* 0x0007012C@l */
/* 80514E14  90 01 00 30 */	stw r0, 0x30(r1)
/* 80514E18  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514E1C  38 81 00 30 */	addi r4, r1, 0x30
/* 80514E20  38 A0 FF FF */	li r5, -1
/* 80514E24  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514E28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514E2C  7D 89 03 A6 */	mtctr r12
/* 80514E30  4E 80 04 21 */	bctrl 
/* 80514E34  48 00 00 4C */	b lbl_80514E80
lbl_80514E38:
/* 80514E38  2C 00 00 33 */	cmpwi r0, 0x33
/* 80514E3C  40 82 00 44 */	bne lbl_80514E80
/* 80514E40  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514E44  38 63 00 0C */	addi r3, r3, 0xc
/* 80514E48  C0 3E 03 5C */	lfs f1, 0x35c(r30)
/* 80514E4C  4B E1 35 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80514E50  2C 03 00 00 */	cmpwi r3, 0
/* 80514E54  41 82 00 2C */	beq lbl_80514E80
/* 80514E58  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007012F@ha */
/* 80514E5C  38 03 01 2F */	addi r0, r3, 0x012F /* 0x0007012F@l */
/* 80514E60  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80514E64  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80514E68  38 81 00 2C */	addi r4, r1, 0x2c
/* 80514E6C  38 A0 FF FF */	li r5, -1
/* 80514E70  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80514E74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514E78  7D 89 03 A6 */	mtctr r12
/* 80514E7C  4E 80 04 21 */	bctrl 
lbl_80514E80:
/* 80514E80  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 80514E84  2C 00 00 00 */	cmpwi r0, 0
/* 80514E88  41 82 00 70 */	beq lbl_80514EF8
/* 80514E8C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514E90  38 80 00 01 */	li r4, 1
/* 80514E94  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80514E98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80514E9C  40 82 00 18 */	bne lbl_80514EB4
/* 80514EA0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80514EA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80514EA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80514EAC  41 82 00 08 */	beq lbl_80514EB4
/* 80514EB0  38 80 00 00 */	li r4, 0
lbl_80514EB4:
/* 80514EB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80514EB8  41 82 00 40 */	beq lbl_80514EF8
/* 80514EBC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80514EC0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80514EC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80514EC8  4C 41 13 82 */	cror 2, 1, 2
/* 80514ECC  40 82 00 0C */	bne lbl_80514ED8
/* 80514ED0  38 80 00 3B */	li r4, 0x3b
/* 80514ED4  48 00 00 08 */	b lbl_80514EDC
lbl_80514ED8:
/* 80514ED8  38 80 00 41 */	li r4, 0x41
lbl_80514EDC:
/* 80514EDC  38 00 00 00 */	li r0, 0
/* 80514EE0  90 1F 06 80 */	stw r0, 0x680(r31)
/* 80514EE4  7F E3 FB 78 */	mr r3, r31
/* 80514EE8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80514EEC  38 A0 00 02 */	li r5, 2
/* 80514EF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80514EF4  4B FE FC E1 */	bl anm_init__FP10e_rd_classifUcf
lbl_80514EF8:
/* 80514EF8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514EFC  4B AF C2 F1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80514F00  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80514F04  2C 00 00 3F */	cmpwi r0, 0x3f
/* 80514F08  41 82 00 18 */	beq lbl_80514F20
/* 80514F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80514F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80514F14  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80514F18  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80514F1C  41 82 00 0C */	beq lbl_80514F28
lbl_80514F20:
/* 80514F20  38 00 00 00 */	li r0, 0
/* 80514F24  98 1F 12 97 */	stb r0, 0x1297(r31)
lbl_80514F28:
/* 80514F28  88 1F 12 97 */	lbz r0, 0x1297(r31)
/* 80514F2C  7C 00 07 75 */	extsb. r0, r0
/* 80514F30  41 82 01 F4 */	beq lbl_80515124
/* 80514F34  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80514F38  82 23 00 04 */	lwz r17, 4(r3)
/* 80514F3C  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 80514F40  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 80514F44  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80514F48  C0 7E 03 38 */	lfs f3, 0x338(r30)
/* 80514F4C  4B D5 AA F1 */	bl cLib_addCalc2__FPffff
/* 80514F50  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80514F54  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 80514F58  80 71 00 84 */	lwz r3, 0x84(r17)
/* 80514F5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80514F60  38 63 02 70 */	addi r3, r3, 0x270
/* 80514F64  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80514F68  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80514F6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80514F70  4B E3 15 41 */	bl PSMTXCopy
/* 80514F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80514F78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80514F7C  82 43 5D 74 */	lwz r18, 0x5d74(r3)
/* 80514F80  3A 60 00 00 */	li r19, 0
/* 80514F84  3A 80 00 00 */	li r20, 0
/* 80514F88  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80514F8C  3A 23 CA 54 */	addi r17, r3, g_env_light@l /* 0x8042CA54@l */
/* 80514F90  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80514F94  3A A3 07 68 */	addi r21, r3, calc_mtx@l /* 0x80450768@l */
lbl_80514F98:
/* 80514F98  4B D5 BF 85 */	bl MtxPush__Fv
/* 80514F9C  2C 13 00 00 */	cmpwi r19, 0
/* 80514FA0  40 82 00 F8 */	bne lbl_80515098
/* 80514FA4  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 80514FA8  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80514FAC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80514FB0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80514FB4  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80514FB8  38 61 00 FC */	addi r3, r1, 0xfc
/* 80514FBC  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80514FC0  4B D5 BF 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80514FC4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80514FC8  38 92 00 D8 */	addi r4, r18, 0xd8
/* 80514FCC  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80514FD0  4B D5 1B 65 */	bl __mi__4cXyzCFRC3Vec
/* 80514FD4  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80514FD8  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80514FDC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80514FE0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80514FE4  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80514FE8  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80514FEC  4B D5 26 89 */	bl cM_atan2s__Fff
/* 80514FF0  7C 70 1B 78 */	mr r16, r3
/* 80514FF4  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80514FF8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80514FFC  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80515000  EC 00 00 32 */	fmuls f0, f0, f0
/* 80515004  EC 41 00 2A */	fadds f2, f1, f0
/* 80515008  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051500C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80515010  40 81 00 0C */	ble lbl_8051501C
/* 80515014  FC 00 10 34 */	frsqrte f0, f2
/* 80515018  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8051501C:
/* 8051501C  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80515020  4B D5 26 55 */	bl cM_atan2s__Fff
/* 80515024  7C 03 00 D0 */	neg r0, r3
/* 80515028  7C 0F 07 34 */	extsh r15, r0
/* 8051502C  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515030  48 00 13 91 */	bl abs__4cXyzCFv
/* 80515034  C0 1E 02 EC */	lfs f0, 0x2ec(r30)
/* 80515038  EF E0 00 72 */	fmuls f31, f0, f1
/* 8051503C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80515040  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80515044  40 81 00 08 */	ble lbl_8051504C
/* 80515048  FF E0 00 90 */	fmr f31, f0
lbl_8051504C:
/* 8051504C  C0 5F 06 CC */	lfs f2, 0x6cc(r31)
/* 80515050  C0 31 12 44 */	lfs f1, 0x1244(r17)
/* 80515054  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80515058  EC 01 00 24 */	fdivs f0, f1, f0
/* 8051505C  FC 00 00 1E */	fctiwz f0, f0
/* 80515060  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80515064  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80515068  54 00 10 3A */	slwi r0, r0, 2
/* 8051506C  38 77 05 28 */	addi r3, r23, 0x528
/* 80515070  7C 03 04 2E */	lfsx f0, r3, r0
/* 80515074  EC 02 00 32 */	fmuls f0, f2, f0
/* 80515078  EF FF 00 32 */	fmuls f31, f31, f0
/* 8051507C  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 80515080  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515084  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515088  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8051508C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80515090  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515094  48 00 00 1C */	b lbl_805150B0
lbl_80515098:
/* 80515098  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 8051509C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805150A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805150A4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805150A8  C0 1E 03 64 */	lfs f0, 0x364(r30)
/* 805150AC  D0 01 01 04 */	stfs f0, 0x104(r1)
lbl_805150B0:
/* 805150B0  38 61 00 FC */	addi r3, r1, 0xfc
/* 805150B4  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805150B8  4B D5 BE 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805150BC  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 805150C0  C0 41 00 F4 */	lfs f2, 0xf4(r1)
/* 805150C4  C0 61 00 F8 */	lfs f3, 0xf8(r1)
/* 805150C8  38 60 00 00 */	li r3, 0
/* 805150CC  4B D5 BD 91 */	bl MtxTrans__FfffUc
/* 805150D0  80 75 00 00 */	lwz r3, 0(r21)
/* 805150D4  7E 04 83 78 */	mr r4, r16
/* 805150D8  4B AF 73 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 805150DC  80 75 00 00 */	lwz r3, 0(r21)
/* 805150E0  7D E4 7B 78 */	mr r4, r15
/* 805150E4  4B AF 72 B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805150E8  FC 20 F8 90 */	fmr f1, f31
/* 805150EC  FC 40 F8 90 */	fmr f2, f31
/* 805150F0  FC 60 F8 90 */	fmr f3, f31
/* 805150F4  38 60 00 01 */	li r3, 1
/* 805150F8  4B D5 BD AD */	bl MtxScale__FfffUc
/* 805150FC  80 75 00 00 */	lwz r3, 0(r21)
/* 80515100  38 14 06 C4 */	addi r0, r20, 0x6c4
/* 80515104  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80515108  38 84 00 24 */	addi r4, r4, 0x24
/* 8051510C  4B E3 13 A5 */	bl PSMTXCopy
/* 80515110  4B D5 BE 49 */	bl MtxPull__Fv
/* 80515114  3A 73 00 01 */	addi r19, r19, 1
/* 80515118  2C 13 00 02 */	cmpwi r19, 2
/* 8051511C  3A 94 00 04 */	addi r20, r20, 4
/* 80515120  41 80 FE 78 */	blt lbl_80514F98
lbl_80515124:
/* 80515124  88 1F 0A FB */	lbz r0, 0xafb(r31)
/* 80515128  7C 00 07 75 */	extsb. r0, r0
/* 8051512C  40 82 04 A0 */	bne lbl_805155CC
/* 80515130  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515134  81 E3 00 04 */	lwz r15, 4(r3)
/* 80515138  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 8051513C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80515140  38 63 02 10 */	addi r3, r3, 0x210
/* 80515144  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515148  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8051514C  80 84 00 00 */	lwz r4, 0(r4)
/* 80515150  4B E3 13 61 */	bl PSMTXCopy
/* 80515154  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515158  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8051515C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515160  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515164  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515168  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8051516C  4B D5 BD 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515170  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80515174  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80515178  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8051517C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515180  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80515184  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515188  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8051518C  4B D5 BD 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515190  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80515194  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80515198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051519C  40 80 00 10 */	bge lbl_805151AC
/* 805151A0  38 00 00 00 */	li r0, 0
/* 805151A4  98 1F 0A 1F */	stb r0, 0xa1f(r31)
/* 805151A8  48 00 00 0C */	b lbl_805151B4
lbl_805151AC:
/* 805151AC  38 00 00 01 */	li r0, 1
/* 805151B0  98 1F 0A 1F */	stb r0, 0xa1f(r31)
lbl_805151B4:
/* 805151B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805151B8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805151BC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805151C0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805151C4  A8 1F 09 98 */	lha r0, 0x998(r31)
/* 805151C8  2C 00 00 00 */	cmpwi r0, 0
/* 805151CC  41 82 00 1C */	beq lbl_805151E8
/* 805151D0  C0 1E 03 68 */	lfs f0, 0x368(r30)
/* 805151D4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805151D8  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 805151DC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805151E0  C0 1E 03 70 */	lfs f0, 0x370(r30)
/* 805151E4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
lbl_805151E8:
/* 805151E8  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 805151EC  7C 00 07 75 */	extsb. r0, r0
/* 805151F0  41 82 00 24 */	beq lbl_80515214
/* 805151F4  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 805151F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805151FC  38 63 01 20 */	addi r3, r3, 0x120
/* 80515200  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515204  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515208  80 84 00 00 */	lwz r4, 0(r4)
/* 8051520C  4B E3 12 A5 */	bl PSMTXCopy
/* 80515210  48 00 00 20 */	b lbl_80515230
lbl_80515214:
/* 80515214  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 80515218  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8051521C  38 63 02 70 */	addi r3, r3, 0x270
/* 80515220  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515224  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515228  80 84 00 00 */	lwz r4, 0(r4)
/* 8051522C  4B E3 12 85 */	bl PSMTXCopy
lbl_80515230:
/* 80515230  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80515234  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515238  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051523C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515240  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515244  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515248  38 9F 05 38 */	addi r4, r31, 0x538
/* 8051524C  4B D5 BC A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515250  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515254  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80515258  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8051525C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80515260  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80515264  41 82 00 40 */	beq lbl_805152A4
/* 80515268  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 8051526C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80515270  EC 01 00 2A */	fadds f0, f1, f0
/* 80515274  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80515278  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8051527C  38 9F 05 38 */	addi r4, r31, 0x538
/* 80515280  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80515284  4B D5 18 61 */	bl __pl__4cXyzCFRC3Vec
/* 80515288  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 8051528C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80515290  4B D5 A3 B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80515294  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 80515298  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8051529C  4B D5 A4 6D */	bl SetR__8cM3dGSphFf
/* 805152A0  48 00 00 2C */	b lbl_805152CC
lbl_805152A4:
/* 805152A4  38 61 00 9C */	addi r3, r1, 0x9c
/* 805152A8  38 9F 05 38 */	addi r4, r31, 0x538
/* 805152AC  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 805152B0  4B D5 18 35 */	bl __pl__4cXyzCFRC3Vec
/* 805152B4  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 805152B8  38 81 00 9C */	addi r4, r1, 0x9c
/* 805152BC  4B D5 A3 8D */	bl SetC__8cM3dGSphFRC4cXyz
/* 805152C0  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 805152C4  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 805152C8  4B D5 A4 41 */	bl SetR__8cM3dGSphFf
lbl_805152CC:
/* 805152CC  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805152D0  2C 00 00 02 */	cmpwi r0, 2
/* 805152D4  40 82 00 4C */	bne lbl_80515320
/* 805152D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805152DC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805152E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805152E4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805152E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805152EC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805152F0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805152F4  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805152F8  EC 01 00 2A */	fadds f0, f1, f0
/* 805152FC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80515300  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80515304  7C 00 07 75 */	extsb. r0, r0
/* 80515308  41 82 00 40 */	beq lbl_80515348
/* 8051530C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80515310  C0 1E 03 78 */	lfs f0, 0x378(r30)
/* 80515314  EC 01 00 2A */	fadds f0, f1, f0
/* 80515318  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8051531C  48 00 00 2C */	b lbl_80515348
lbl_80515320:
/* 80515320  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80515324  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80515328  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8051532C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80515330  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80515334  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80515338  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8051533C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80515340  EC 01 00 2A */	fadds f0, f1, f0
/* 80515344  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_80515348:
/* 80515348  88 7F 12 9A */	lbz r3, 0x129a(r31)
/* 8051534C  7C 60 07 75 */	extsb. r0, r3
/* 80515350  41 82 00 E8 */	beq lbl_80515438
/* 80515354  C3 FE 00 E4 */	lfs f31, 0xe4(r30)
/* 80515358  C3 DE 00 04 */	lfs f30, 4(r30)
/* 8051535C  7C 60 07 74 */	extsb r0, r3
/* 80515360  2C 00 00 02 */	cmpwi r0, 2
/* 80515364  40 82 00 10 */	bne lbl_80515374
/* 80515368  C3 FE 01 88 */	lfs f31, 0x188(r30)
/* 8051536C  38 7D 00 54 */	addi r3, r29, 0x54
/* 80515370  C3 C3 00 3C */	lfs f30, 0x3c(r3)
lbl_80515374:
/* 80515374  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515378  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8051537C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515380  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515384  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 80515388  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8051538C  38 63 00 60 */	addi r3, r3, 0x60
/* 80515390  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515394  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515398  80 84 00 00 */	lwz r4, 0(r4)
/* 8051539C  4B E3 11 15 */	bl PSMTXCopy
/* 805153A0  38 61 00 FC */	addi r3, r1, 0xfc
/* 805153A4  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805153A8  4B D5 BB 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805153AC  38 61 00 90 */	addi r3, r1, 0x90
/* 805153B0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805153B4  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 805153B8  4B D5 17 2D */	bl __pl__4cXyzCFRC3Vec
/* 805153BC  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 805153C0  38 81 00 90 */	addi r4, r1, 0x90
/* 805153C4  4B D5 A2 85 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805153C8  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 805153CC  EC 3F F0 2A */	fadds f1, f31, f30
/* 805153D0  4B D5 A3 39 */	bl SetR__8cM3dGSphFf
/* 805153D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805153D8  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805153DC  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805153E0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805153E4  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 805153E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805153EC  38 63 04 20 */	addi r3, r3, 0x420
/* 805153F0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805153F4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805153F8  80 84 00 00 */	lwz r4, 0(r4)
/* 805153FC  4B E3 10 B5 */	bl PSMTXCopy
/* 80515400  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515404  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515408  4B D5 BA E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8051540C  38 61 00 84 */	addi r3, r1, 0x84
/* 80515410  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515414  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80515418  4B D5 16 CD */	bl __pl__4cXyzCFRC3Vec
/* 8051541C  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 80515420  38 81 00 84 */	addi r4, r1, 0x84
/* 80515424  4B D5 A2 25 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80515428  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 8051542C  FC 20 F8 90 */	fmr f1, f31
/* 80515430  4B D5 A2 D9 */	bl SetR__8cM3dGSphFf
/* 80515434  48 00 00 C8 */	b lbl_805154FC
lbl_80515438:
/* 80515438  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051543C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515440  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515444  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515448  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 8051544C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80515450  38 63 02 40 */	addi r3, r3, 0x240
/* 80515454  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515458  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8051545C  80 84 00 00 */	lwz r4, 0(r4)
/* 80515460  4B E3 10 51 */	bl PSMTXCopy
/* 80515464  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515468  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8051546C  4B D5 BA 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515470  38 61 00 78 */	addi r3, r1, 0x78
/* 80515474  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515478  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8051547C  4B D5 16 69 */	bl __pl__4cXyzCFRC3Vec
/* 80515480  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80515484  38 81 00 78 */	addi r4, r1, 0x78
/* 80515488  4B D5 A1 C1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8051548C  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80515490  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 80515494  4B D5 A2 75 */	bl SetR__8cM3dGSphFf
/* 80515498  C0 1E 03 58 */	lfs f0, 0x358(r30)
/* 8051549C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805154A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805154A4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805154A8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805154AC  80 6F 00 84 */	lwz r3, 0x84(r15)
/* 805154B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805154B4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 805154B8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805154BC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805154C0  80 84 00 00 */	lwz r4, 0(r4)
/* 805154C4  4B E3 0F ED */	bl PSMTXCopy
/* 805154C8  38 61 00 FC */	addi r3, r1, 0xfc
/* 805154CC  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805154D0  4B D5 BA 1D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805154D4  38 61 00 6C */	addi r3, r1, 0x6c
/* 805154D8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805154DC  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 805154E0  4B D5 16 05 */	bl __pl__4cXyzCFRC3Vec
/* 805154E4  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 805154E8  38 81 00 6C */	addi r4, r1, 0x6c
/* 805154EC  4B D5 A1 5D */	bl SetC__8cM3dGSphFRC4cXyz
/* 805154F0  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 805154F4  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 805154F8  4B D5 A2 11 */	bl SetR__8cM3dGSphFf
lbl_805154FC:
/* 805154FC  3A 00 00 00 */	li r16, 0
/* 80515500  3A 20 00 00 */	li r17, 0
/* 80515504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051550C  39 E3 23 3C */	addi r15, r3, 0x233c
lbl_80515510:
/* 80515510  88 1F 09 AD */	lbz r0, 0x9ad(r31)
/* 80515514  7C 00 07 75 */	extsb. r0, r0
/* 80515518  41 82 00 18 */	beq lbl_80515530
/* 8051551C  38 71 0D 84 */	addi r3, r17, 0xd84
/* 80515520  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80515524  60 00 00 01 */	ori r0, r0, 1
/* 80515528  7C 1F 19 2E */	stwx r0, r31, r3
/* 8051552C  48 00 00 14 */	b lbl_80515540
lbl_80515530:
/* 80515530  38 71 0D 84 */	addi r3, r17, 0xd84
/* 80515534  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80515538  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8051553C  7C 1F 19 2E */	stwx r0, r31, r3
lbl_80515540:
/* 80515540  7D E3 7B 78 */	mr r3, r15
/* 80515544  7E 5F 8A 14 */	add r18, r31, r17
/* 80515548  38 92 0D 58 */	addi r4, r18, 0xd58
/* 8051554C  4B D4 F6 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 80515550  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80515554  2C 00 00 01 */	cmpwi r0, 1
/* 80515558  40 82 00 20 */	bne lbl_80515578
/* 8051555C  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 80515560  2C 00 00 02 */	cmpwi r0, 2
/* 80515564  40 82 00 14 */	bne lbl_80515578
/* 80515568  80 12 0D F4 */	lwz r0, 0xdf4(r18)
/* 8051556C  60 00 00 04 */	ori r0, r0, 4
/* 80515570  90 12 0D F4 */	stw r0, 0xdf4(r18)
/* 80515574  48 00 00 10 */	b lbl_80515584
lbl_80515578:
/* 80515578  80 12 0D F4 */	lwz r0, 0xdf4(r18)
/* 8051557C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80515580  90 12 0D F4 */	stw r0, 0xdf4(r18)
lbl_80515584:
/* 80515584  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80515588  2C 00 00 03 */	cmpwi r0, 3
/* 8051558C  40 82 00 30 */	bne lbl_805155BC
/* 80515590  38 60 00 00 */	li r3, 0
/* 80515594  38 80 20 22 */	li r4, 0x2022
/* 80515598  38 00 00 03 */	li r0, 3
/* 8051559C  7C 09 03 A6 */	mtctr r0
lbl_805155A0:
/* 805155A0  7C BF 1A 14 */	add r5, r31, r3
/* 805155A4  90 85 0D 80 */	stw r4, 0xd80(r5)
/* 805155A8  80 05 0D F4 */	lwz r0, 0xdf4(r5)
/* 805155AC  60 00 00 04 */	ori r0, r0, 4
/* 805155B0  90 05 0D F4 */	stw r0, 0xdf4(r5)
/* 805155B4  38 63 01 38 */	addi r3, r3, 0x138
/* 805155B8  42 00 FF E8 */	bdnz lbl_805155A0
lbl_805155BC:
/* 805155BC  3A 10 00 01 */	addi r16, r16, 1
/* 805155C0  2C 10 00 02 */	cmpwi r16, 2
/* 805155C4  3A 31 01 38 */	addi r17, r17, 0x138
/* 805155C8  40 81 FF 48 */	ble lbl_80515510
lbl_805155CC:
/* 805155CC  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 805155D0  2C 00 00 02 */	cmpwi r0, 2
/* 805155D4  40 82 00 84 */	bne lbl_80515658
/* 805155D8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805155DC  80 63 00 04 */	lwz r3, 4(r3)
/* 805155E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805155E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805155E8  38 63 02 10 */	addi r3, r3, 0x210
/* 805155EC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805155F0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805155F4  80 84 00 00 */	lwz r4, 0(r4)
/* 805155F8  4B E3 0E B9 */	bl PSMTXCopy
/* 805155FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515600  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515604  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515608  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8051560C  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515610  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515614  4B D5 B8 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515618  38 7F 12 24 */	addi r3, r31, 0x1224
/* 8051561C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80515620  38 9D 00 54 */	addi r4, r29, 0x54
/* 80515624  C0 04 00 08 */	lfs f0, 8(r4)
/* 80515628  EC 21 00 32 */	fmuls f1, f1, f0
/* 8051562C  4B D5 A0 DD */	bl SetR__8cM3dGSphFf
/* 80515630  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80515634  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515638  4B D5 A0 11 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8051563C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80515644  38 63 23 3C */	addi r3, r3, 0x233c
/* 80515648  38 9F 11 00 */	addi r4, r31, 0x1100
/* 8051564C  4B D4 F5 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 80515650  38 00 00 00 */	li r0, 0
/* 80515654  98 1F 09 AB */	stb r0, 0x9ab(r31)
lbl_80515658:
/* 80515658  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8051565C  28 00 00 01 */	cmplwi r0, 1
/* 80515660  40 82 01 F8 */	bne lbl_80515858
/* 80515664  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 80515668  7C 00 07 75 */	extsb. r0, r0
/* 8051566C  40 82 00 2C */	bne lbl_80515698
/* 80515670  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515674  80 63 00 04 */	lwz r3, 4(r3)
/* 80515678  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8051567C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80515680  38 63 04 80 */	addi r3, r3, 0x480
/* 80515684  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515688  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8051568C  80 84 00 00 */	lwz r4, 0(r4)
/* 80515690  4B E3 0E 21 */	bl PSMTXCopy
/* 80515694  48 00 00 78 */	b lbl_8051570C
lbl_80515698:
/* 80515698  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8051569C  80 63 00 04 */	lwz r3, 4(r3)
/* 805156A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805156A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805156A8  38 63 02 10 */	addi r3, r3, 0x210
/* 805156AC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805156B0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805156B4  80 84 00 00 */	lwz r4, 0(r4)
/* 805156B8  4B E3 0D F9 */	bl PSMTXCopy
/* 805156BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805156C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805156C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805156C8  38 80 17 70 */	li r4, 0x1770
/* 805156CC  4B AF 6D 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 805156D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805156D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805156D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805156DC  38 80 27 10 */	li r4, 0x2710
/* 805156E0  4B AF 6C BD */	bl mDoMtx_XrotM__FPA4_fs
/* 805156E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805156E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805156EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805156F0  38 80 46 50 */	li r4, 0x4650
/* 805156F4  4B AF 6D D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805156F8  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 805156FC  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80515700  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 80515704  38 60 00 01 */	li r3, 1
/* 80515708  4B D5 B7 55 */	bl MtxTrans__FfffUc
lbl_8051570C:
/* 8051570C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80515710  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80515714  80 63 00 00 */	lwz r3, 0(r3)
/* 80515718  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 8051571C  38 84 00 24 */	addi r4, r4, 0x24
/* 80515720  4B E3 0D 91 */	bl PSMTXCopy
/* 80515724  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 80515728  7C 00 07 75 */	extsb. r0, r0
/* 8051572C  41 82 00 E8 */	beq lbl_80515814
/* 80515730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515734  39 E3 61 C0 */	addi r15, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80515738  80 6F 5D AC */	lwz r3, 0x5dac(r15)
/* 8051573C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80515740  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80515744  7D 89 03 A6 */	mtctr r12
/* 80515748  4E 80 04 21 */	bctrl 
/* 8051574C  28 03 00 00 */	cmplwi r3, 0
/* 80515750  40 82 00 20 */	bne lbl_80515770
/* 80515754  80 6F 5D AC */	lwz r3, 0x5dac(r15)
/* 80515758  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8051575C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 80515760  7D 89 03 A6 */	mtctr r12
/* 80515764  4E 80 04 21 */	bctrl 
/* 80515768  28 03 00 00 */	cmplwi r3, 0
/* 8051576C  41 82 00 34 */	beq lbl_805157A0
lbl_80515770:
/* 80515770  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80515774  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80515778  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8051577C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515780  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80515784  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80515788  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8051578C  38 9D 00 54 */	addi r4, r29, 0x54
/* 80515790  C0 04 00 08 */	lfs f0, 8(r4)
/* 80515794  EC 21 00 32 */	fmuls f1, f1, f0
/* 80515798  4B D5 9F 71 */	bl SetR__8cM3dGSphFf
/* 8051579C  48 00 00 30 */	b lbl_805157CC
lbl_805157A0:
/* 805157A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805157A4  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 805157A8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805157AC  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805157B0  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 805157B4  38 7F 12 24 */	addi r3, r31, 0x1224
/* 805157B8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805157BC  38 9D 00 54 */	addi r4, r29, 0x54
/* 805157C0  C0 04 00 08 */	lfs f0, 8(r4)
/* 805157C4  EC 21 00 32 */	fmuls f1, f1, f0
/* 805157C8  4B D5 9F 41 */	bl SetR__8cM3dGSphFf
lbl_805157CC:
/* 805157CC  38 61 00 FC */	addi r3, r1, 0xfc
/* 805157D0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805157D4  4B D5 B7 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805157D8  88 1F 09 AC */	lbz r0, 0x9ac(r31)
/* 805157DC  7C 00 07 75 */	extsb. r0, r0
/* 805157E0  40 82 00 1C */	bne lbl_805157FC
/* 805157E4  38 00 00 01 */	li r0, 1
/* 805157E8  98 1F 09 AC */	stb r0, 0x9ac(r31)
/* 805157EC  38 7F 11 00 */	addi r3, r31, 0x1100
/* 805157F0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805157F4  4B B6 F2 85 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 805157F8  48 00 00 10 */	b lbl_80515808
lbl_805157FC:
/* 805157FC  38 7F 11 00 */	addi r3, r31, 0x1100
/* 80515800  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515804  4B B6 F2 C1 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_80515808:
/* 80515808  38 00 00 00 */	li r0, 0
/* 8051580C  98 1F 09 AB */	stb r0, 0x9ab(r31)
/* 80515810  48 00 00 34 */	b lbl_80515844
lbl_80515814:
/* 80515814  C0 1E 03 7C */	lfs f0, 0x37c(r30)
/* 80515818  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8051581C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80515820  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80515824  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80515828  38 81 00 CC */	addi r4, r1, 0xcc
/* 8051582C  4B D5 9E 1D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80515830  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80515834  C0 3E 03 80 */	lfs f1, 0x380(r30)
/* 80515838  4B D5 9E D1 */	bl SetR__8cM3dGSphFf
/* 8051583C  38 00 00 00 */	li r0, 0
/* 80515840  98 1F 09 AC */	stb r0, 0x9ac(r31)
lbl_80515844:
/* 80515844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051584C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80515850  38 9F 11 00 */	addi r4, r31, 0x1100
/* 80515854  4B D4 F3 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80515858:
/* 80515858  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8051585C  28 00 00 02 */	cmplwi r0, 2
/* 80515860  41 80 05 50 */	blt lbl_80515DB0
/* 80515864  A8 7F 09 A6 */	lha r3, 0x9a6(r31)
/* 80515868  2C 03 00 00 */	cmpwi r3, 0
/* 8051586C  41 82 00 0C */	beq lbl_80515878
/* 80515870  38 03 FF FF */	addi r0, r3, -1
/* 80515874  B0 1F 09 A6 */	sth r0, 0x9a6(r31)
lbl_80515878:
/* 80515878  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 8051587C  1C 04 78 00 */	mulli r0, r4, 0x7800
/* 80515880  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80515884  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80515888  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8051588C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80515890  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80515894  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 80515898  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8051589C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 805158A0  3C 00 43 30 */	lis r0, 0x4330
/* 805158A4  90 01 01 08 */	stw r0, 0x108(r1)
/* 805158A8  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 805158AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805158B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805158B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805158B8  FC 00 00 1E */	fctiwz f0, f0
/* 805158BC  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 805158C0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 805158C4  B0 1F 09 A8 */	sth r0, 0x9a8(r31)
/* 805158C8  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 805158CC  81 E3 00 04 */	lwz r15, 4(r3)
/* 805158D0  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 805158D4  7C 00 07 75 */	extsb. r0, r0
/* 805158D8  40 82 00 24 */	bne lbl_805158FC
/* 805158DC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805158E0  80 63 00 04 */	lwz r3, 4(r3)
/* 805158E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805158E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805158EC  38 63 03 90 */	addi r3, r3, 0x390
/* 805158F0  38 8F 00 24 */	addi r4, r15, 0x24
/* 805158F4  4B E3 0B BD */	bl PSMTXCopy
/* 805158F8  48 00 00 8C */	b lbl_80515984
lbl_805158FC:
/* 805158FC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515900  80 63 00 04 */	lwz r3, 4(r3)
/* 80515904  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80515908  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8051590C  38 63 02 10 */	addi r3, r3, 0x210
/* 80515910  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515914  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515918  80 84 00 00 */	lwz r4, 0(r4)
/* 8051591C  4B E3 0B 95 */	bl PSMTXCopy
/* 80515920  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80515924  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80515928  80 63 00 00 */	lwz r3, 0(r3)
/* 8051592C  38 80 17 70 */	li r4, 0x1770
/* 80515930  4B AF 6B 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80515934  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80515938  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8051593C  80 63 00 00 */	lwz r3, 0(r3)
/* 80515940  38 80 27 10 */	li r4, 0x2710
/* 80515944  4B AF 6A 59 */	bl mDoMtx_XrotM__FPA4_fs
/* 80515948  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8051594C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80515950  80 63 00 00 */	lwz r3, 0(r3)
/* 80515954  38 80 46 50 */	li r4, 0x4650
/* 80515958  4B AF 6B 75 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8051595C  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80515960  FC 40 08 90 */	fmr f2, f1
/* 80515964  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80515968  38 60 00 01 */	li r3, 1
/* 8051596C  4B D5 B4 F1 */	bl MtxTrans__FfffUc
/* 80515970  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80515974  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80515978  80 63 00 00 */	lwz r3, 0(r3)
/* 8051597C  38 8F 00 24 */	addi r4, r15, 0x24
/* 80515980  4B E3 0B 31 */	bl PSMTXCopy
lbl_80515984:
/* 80515984  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 80515988  38 80 00 00 */	li r4, 0
/* 8051598C  38 A0 00 00 */	li r5, 0
/* 80515990  4B AF B7 21 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80515994  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 80515998  4B AF B8 55 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8051599C  88 1F 09 A2 */	lbz r0, 0x9a2(r31)
/* 805159A0  7C 00 07 75 */	extsb. r0, r0
/* 805159A4  41 82 00 80 */	beq lbl_80515A24
/* 805159A8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805159AC  80 63 00 04 */	lwz r3, 4(r3)
/* 805159B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805159B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805159B8  38 63 04 80 */	addi r3, r3, 0x480
/* 805159BC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805159C0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805159C4  80 84 00 00 */	lwz r4, 0(r4)
/* 805159C8  4B E3 0A E9 */	bl PSMTXCopy
/* 805159CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805159D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805159D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805159D8  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 805159DC  38 84 00 24 */	addi r4, r4, 0x24
/* 805159E0  4B E3 0A D1 */	bl PSMTXCopy
/* 805159E4  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 805159E8  28 00 00 03 */	cmplwi r0, 3
/* 805159EC  41 80 00 28 */	blt lbl_80515A14
/* 805159F0  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805159F4  2C 00 00 02 */	cmpwi r0, 2
/* 805159F8  40 82 00 10 */	bne lbl_80515A08
/* 805159FC  A8 1F 09 92 */	lha r0, 0x992(r31)
/* 80515A00  2C 00 00 12 */	cmpwi r0, 0x12
/* 80515A04  41 81 00 20 */	bgt lbl_80515A24
lbl_80515A08:
/* 80515A08  7F E3 FB 78 */	mr r3, r31
/* 80515A0C  4B FF CF 09 */	bl fire_eff_set__FP10e_rd_class
/* 80515A10  48 00 00 14 */	b lbl_80515A24
lbl_80515A14:
/* 80515A14  C0 1E 03 7C */	lfs f0, 0x37c(r30)
/* 80515A18  D0 1F 12 7C */	stfs f0, 0x127c(r31)
/* 80515A1C  D0 1F 12 80 */	stfs f0, 0x1280(r31)
/* 80515A20  D0 1F 12 84 */	stfs f0, 0x1284(r31)
lbl_80515A24:
/* 80515A24  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80515A28  7C 00 07 75 */	extsb. r0, r0
/* 80515A2C  41 82 03 84 */	beq lbl_80515DB0
/* 80515A30  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80515A34  28 00 00 03 */	cmplwi r0, 3
/* 80515A38  40 82 00 34 */	bne lbl_80515A6C
/* 80515A3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080007@ha */
/* 80515A40  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00080007@l */
/* 80515A44  90 01 00 28 */	stw r0, 0x28(r1)
/* 80515A48  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80515A4C  38 81 00 28 */	addi r4, r1, 0x28
/* 80515A50  38 A0 00 00 */	li r5, 0
/* 80515A54  38 C0 FF FF */	li r6, -1
/* 80515A58  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80515A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80515A60  7D 89 03 A6 */	mtctr r12
/* 80515A64  4E 80 04 21 */	bctrl 
/* 80515A68  48 00 00 30 */	b lbl_80515A98
lbl_80515A6C:
/* 80515A6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080002@ha */
/* 80515A70  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00080002@l */
/* 80515A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80515A78  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80515A7C  38 81 00 24 */	addi r4, r1, 0x24
/* 80515A80  38 A0 00 00 */	li r5, 0
/* 80515A84  38 C0 FF FF */	li r6, -1
/* 80515A88  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80515A8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80515A90  7D 89 03 A6 */	mtctr r12
/* 80515A94  4E 80 04 21 */	bctrl 
lbl_80515A98:
/* 80515A98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070017@ha */
/* 80515A9C  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00070017@l */
/* 80515AA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80515AA4  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80515AA8  38 81 00 20 */	addi r4, r1, 0x20
/* 80515AAC  38 A0 FF FF */	li r5, -1
/* 80515AB0  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80515AB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80515AB8  7D 89 03 A6 */	mtctr r12
/* 80515ABC  4E 80 04 21 */	bctrl 
/* 80515AC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515AC4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515AC8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515ACC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515AD0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515AD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80515AD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80515ADC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80515AE0  38 63 04 80 */	addi r3, r3, 0x480
/* 80515AE4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515AE8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515AEC  80 84 00 00 */	lwz r4, 0(r4)
/* 80515AF0  4B E3 09 C1 */	bl PSMTXCopy
/* 80515AF4  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515AF8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515AFC  4B D5 B3 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515B00  39 E0 00 00 */	li r15, 0
/* 80515B04  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 80515B08  2C 00 00 08 */	cmpwi r0, 8
/* 80515B0C  40 82 00 70 */	bne lbl_80515B7C
/* 80515B10  38 61 00 60 */	addi r3, r1, 0x60
/* 80515B14  38 9F 09 D4 */	addi r4, r31, 0x9d4
/* 80515B18  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80515B1C  4B D5 10 19 */	bl __mi__4cXyzCFRC3Vec
/* 80515B20  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80515B24  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80515B28  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80515B2C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515B30  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80515B34  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80515B38  4B D5 1B 3D */	bl cM_atan2s__Fff
/* 80515B3C  B0 61 00 4E */	sth r3, 0x4e(r1)
/* 80515B40  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80515B44  EC 20 00 32 */	fmuls f1, f0, f0
/* 80515B48  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80515B4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80515B50  EC 41 00 2A */	fadds f2, f1, f0
/* 80515B54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515B58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80515B5C  40 81 00 0C */	ble lbl_80515B68
/* 80515B60  FC 00 10 34 */	frsqrte f0, f2
/* 80515B64  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80515B68:
/* 80515B68  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80515B6C  4B D5 1B 09 */	bl cM_atan2s__Fff
/* 80515B70  7C 03 00 D0 */	neg r0, r3
/* 80515B74  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80515B78  48 00 01 B0 */	b lbl_80515D28
lbl_80515B7C:
/* 80515B7C  7F E3 FB 78 */	mr r3, r31
/* 80515B80  4B FE EF A1 */	bl get_pla__FP10fopAc_ac_c
/* 80515B84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515B88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80515B8C  80 04 5D AC */	lwz r0, 0x5dac(r4)
/* 80515B90  7C 03 00 40 */	cmplw r3, r0
/* 80515B94  41 82 00 08 */	beq lbl_80515B9C
/* 80515B98  61 EF 00 20 */	ori r15, r15, 0x20
lbl_80515B9C:
/* 80515B9C  C0 63 05 38 */	lfs f3, 0x538(r3)
/* 80515BA0  D0 61 00 FC */	stfs f3, 0xfc(r1)
/* 80515BA4  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80515BA8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515BAC  C0 43 05 40 */	lfs f2, 0x540(r3)
/* 80515BB0  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80515BB4  88 1F 12 96 */	lbz r0, 0x1296(r31)
/* 80515BB8  7C 00 07 75 */	extsb. r0, r0
/* 80515BBC  41 82 00 28 */	beq lbl_80515BE4
/* 80515BC0  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80515BC4  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80515BC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80515BCC  EC 03 00 2A */	fadds f0, f3, f0
/* 80515BD0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515BD4  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80515BD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80515BDC  EC 02 00 2A */	fadds f0, f2, f0
/* 80515BE0  D0 01 01 04 */	stfs f0, 0x104(r1)
lbl_80515BE4:
/* 80515BE4  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515BE8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80515BEC  7C 65 1B 78 */	mr r5, r3
/* 80515BF0  4B E3 14 C5 */	bl PSVECSubtract
/* 80515BF4  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80515BF8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80515BFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80515C00  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515C04  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80515C08  C0 41 01 04 */	lfs f2, 0x104(r1)
/* 80515C0C  4B D5 1A 69 */	bl cM_atan2s__Fff
/* 80515C10  B0 61 00 4E */	sth r3, 0x4e(r1)
/* 80515C14  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 80515C18  2C 00 00 02 */	cmpwi r0, 2
/* 80515C1C  40 82 00 5C */	bne lbl_80515C78
/* 80515C20  7F E3 FB 78 */	mr r3, r31
/* 80515C24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80515C28  4B FF 00 AD */	bl pl_pass_check__FP10e_rd_classf
/* 80515C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80515C30  40 82 00 48 */	bne lbl_80515C78
/* 80515C34  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80515C38  4B D5 1D 1D */	bl cM_rndF__Ff
/* 80515C3C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80515C40  EC 00 08 2A */	fadds f0, f0, f1
/* 80515C44  FC 00 00 1E */	fctiwz f0, f0
/* 80515C48  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80515C4C  82 01 01 14 */	lwz r16, 0x114(r1)
/* 80515C50  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80515C54  4B D5 1D 01 */	bl cM_rndF__Ff
/* 80515C58  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80515C5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80515C60  40 80 00 0C */	bge lbl_80515C6C
/* 80515C64  1C 10 FF FF */	mulli r0, r16, -1
/* 80515C68  7C 10 07 34 */	extsh r16, r0
lbl_80515C6C:
/* 80515C6C  A8 01 00 4E */	lha r0, 0x4e(r1)
/* 80515C70  7C 00 82 14 */	add r0, r0, r16
/* 80515C74  B0 01 00 4E */	sth r0, 0x4e(r1)
lbl_80515C78:
/* 80515C78  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80515C7C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80515C80  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80515C84  EC 00 00 32 */	fmuls f0, f0, f0
/* 80515C88  EC 41 00 2A */	fadds f2, f1, f0
/* 80515C8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515C90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80515C94  40 81 00 0C */	ble lbl_80515CA0
/* 80515C98  FC 00 10 34 */	frsqrte f0, f2
/* 80515C9C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80515CA0:
/* 80515CA0  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80515CA4  4B D5 19 D1 */	bl cM_atan2s__Fff
/* 80515CA8  7C 03 00 D0 */	neg r0, r3
/* 80515CAC  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80515CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80515CB8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80515CBC  3C 80 80 52 */	lis r4, d_a_e_rd__stringBase0@ha /* 0x80518968@ha */
/* 80515CC0  38 84 89 68 */	addi r4, r4, d_a_e_rd__stringBase0@l /* 0x80518968@l */
/* 80515CC4  38 84 00 06 */	addi r4, r4, 6
/* 80515CC8  4B E5 2C CD */	bl strcmp
/* 80515CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80515CD0  41 82 00 58 */	beq lbl_80515D28
/* 80515CD4  88 1F 12 96 */	lbz r0, 0x1296(r31)
/* 80515CD8  7C 00 07 75 */	extsb. r0, r0
/* 80515CDC  40 82 00 4C */	bne lbl_80515D28
/* 80515CE0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80515CE4  4B D5 1C A9 */	bl cM_rndFX__Ff
/* 80515CE8  C0 1E 03 84 */	lfs f0, 0x384(r30)
/* 80515CEC  EC 00 08 2A */	fadds f0, f0, f1
/* 80515CF0  FC 00 00 1E */	fctiwz f0, f0
/* 80515CF4  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80515CF8  80 61 01 14 */	lwz r3, 0x114(r1)
/* 80515CFC  A8 01 00 4C */	lha r0, 0x4c(r1)
/* 80515D00  7C 00 1A 14 */	add r0, r0, r3
/* 80515D04  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80515D08  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80515D0C  4B D5 1C 81 */	bl cM_rndFX__Ff
/* 80515D10  FC 00 08 1E */	fctiwz f0, f1
/* 80515D14  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80515D18  80 61 01 0C */	lwz r3, 0x10c(r1)
/* 80515D1C  A8 01 00 4E */	lha r0, 0x4e(r1)
/* 80515D20  7C 00 1A 14 */	add r0, r0, r3
/* 80515D24  B0 01 00 4E */	sth r0, 0x4e(r1)
lbl_80515D28:
/* 80515D28  38 00 00 00 */	li r0, 0
/* 80515D2C  B0 01 00 50 */	sth r0, 0x50(r1)
/* 80515D30  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80515D34  28 00 00 03 */	cmplwi r0, 3
/* 80515D38  40 82 00 0C */	bne lbl_80515D44
/* 80515D3C  61 EF 00 01 */	ori r15, r15, 1
/* 80515D40  48 00 00 10 */	b lbl_80515D50
lbl_80515D44:
/* 80515D44  28 00 00 04 */	cmplwi r0, 4
/* 80515D48  40 82 00 08 */	bne lbl_80515D50
/* 80515D4C  61 EF 00 02 */	ori r15, r15, 2
lbl_80515D50:
/* 80515D50  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80515D54  28 00 00 0B */	cmplwi r0, 0xb
/* 80515D58  40 82 00 08 */	bne lbl_80515D60
/* 80515D5C  61 EF 00 10 */	ori r15, r15, 0x10
lbl_80515D60:
/* 80515D60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80515D64  7C 07 07 74 */	extsb r7, r0
/* 80515D68  38 00 00 00 */	li r0, 0
/* 80515D6C  90 01 00 08 */	stw r0, 8(r1)
/* 80515D70  38 60 02 E5 */	li r3, 0x2e5
/* 80515D74  28 1F 00 00 */	cmplwi r31, 0
/* 80515D78  41 82 00 0C */	beq lbl_80515D84
/* 80515D7C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80515D80  48 00 00 08 */	b lbl_80515D88
lbl_80515D84:
/* 80515D84  38 80 FF FF */	li r4, -1
lbl_80515D88:
/* 80515D88  7D E5 7B 78 */	mr r5, r15
/* 80515D8C  38 C1 00 F0 */	addi r6, r1, 0xf0
/* 80515D90  39 01 00 4C */	addi r8, r1, 0x4c
/* 80515D94  39 20 00 00 */	li r9, 0
/* 80515D98  39 40 FF FF */	li r10, -1
/* 80515D9C  4B B0 41 55 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80515DA0  38 00 00 00 */	li r0, 0
/* 80515DA4  98 1F 09 A3 */	stb r0, 0x9a3(r31)
/* 80515DA8  38 00 00 0F */	li r0, 0xf
/* 80515DAC  B0 1F 09 A6 */	sth r0, 0x9a6(r31)
lbl_80515DB0:
/* 80515DB0  88 1F 09 68 */	lbz r0, 0x968(r31)
/* 80515DB4  7C 00 07 75 */	extsb. r0, r0
/* 80515DB8  41 82 00 18 */	beq lbl_80515DD0
/* 80515DBC  38 7F 09 6C */	addi r3, r31, 0x96c
/* 80515DC0  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80515DC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80515DC8  C0 7E 02 80 */	lfs f3, 0x280(r30)
/* 80515DCC  4B D5 9C 71 */	bl cLib_addCalc2__FPffff
lbl_80515DD0:
/* 80515DD0  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80515DD4  7C 00 07 75 */	extsb. r0, r0
/* 80515DD8  41 82 04 84 */	beq lbl_8051625C
/* 80515DDC  3B 80 00 00 */	li r28, 0
/* 80515DE0  3B 60 00 00 */	li r27, 0
/* 80515DE4  3B 40 00 00 */	li r26, 0
/* 80515DE8  3B 20 00 00 */	li r25, 0
/* 80515DEC  3B 1D 00 54 */	addi r24, r29, 0x54
/* 80515DF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80515DF4  39 E3 61 C0 */	addi r15, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80515DF8:
/* 80515DF8  3B B9 06 D4 */	addi r29, r25, 0x6d4
/* 80515DFC  7C 1F E8 2E */	lwzx r0, r31, r29
/* 80515E00  28 00 00 00 */	cmplwi r0, 0
/* 80515E04  41 82 02 08 */	beq lbl_8051600C
/* 80515E08  38 1C 07 0C */	addi r0, r28, 0x70c
/* 80515E0C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 80515E10  7C 00 07 75 */	extsb. r0, r0
/* 80515E14  40 82 00 B0 */	bne lbl_80515EC4
/* 80515E18  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80515E1C  2C 00 00 03 */	cmpwi r0, 3
/* 80515E20  40 82 00 38 */	bne lbl_80515E58
/* 80515E24  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515E28  80 63 00 04 */	lwz r3, 4(r3)
/* 80515E2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80515E30  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80515E34  38 77 05 C4 */	addi r3, r23, 0x5c4
/* 80515E38  7C 03 C8 2E */	lwzx r0, r3, r25
/* 80515E3C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80515E40  7C 64 02 14 */	add r3, r4, r0
/* 80515E44  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515E48  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515E4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80515E50  4B E3 06 61 */	bl PSMTXCopy
/* 80515E54  48 00 00 34 */	b lbl_80515E88
lbl_80515E58:
/* 80515E58  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80515E5C  80 63 00 04 */	lwz r3, 4(r3)
/* 80515E60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80515E64  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80515E68  38 77 05 8C */	addi r3, r23, 0x58c
/* 80515E6C  7C 03 C8 2E */	lwzx r0, r3, r25
/* 80515E70  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80515E74  7C 64 02 14 */	add r3, r4, r0
/* 80515E78  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80515E7C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80515E80  80 84 00 00 */	lwz r4, 0(r4)
/* 80515E84  4B E3 06 2D */	bl PSMTXCopy
lbl_80515E88:
/* 80515E88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80515E8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80515E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80515E94  7C 9F E8 2E */	lwzx r4, r31, r29
/* 80515E98  38 84 00 24 */	addi r4, r4, 0x24
/* 80515E9C  4B E3 06 15 */	bl PSMTXCopy
/* 80515EA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80515EA4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80515EA8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80515EAC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80515EB0  38 61 00 FC */	addi r3, r1, 0xfc
/* 80515EB4  38 9A 07 1C */	addi r4, r26, 0x71c
/* 80515EB8  7C 9F 22 14 */	add r4, r31, r4
/* 80515EBC  4B D5 B0 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80515EC0  48 00 01 4C */	b lbl_8051600C
lbl_80515EC4:
/* 80515EC4  7E DF D2 14 */	add r22, r31, r26
/* 80515EC8  3A B6 07 1C */	addi r21, r22, 0x71c
/* 80515ECC  7E A3 AB 78 */	mr r3, r21
/* 80515ED0  38 96 07 C4 */	addi r4, r22, 0x7c4
/* 80515ED4  7E A5 AB 78 */	mr r5, r21
/* 80515ED8  4B E3 11 B9 */	bl PSVECAdd
/* 80515EDC  C0 36 07 C8 */	lfs f1, 0x7c8(r22)
/* 80515EE0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80515EE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80515EE8  D0 16 07 C8 */	stfs f0, 0x7c8(r22)
/* 80515EEC  7E 1F DA 14 */	add r16, r31, r27
/* 80515EF0  A8 70 08 6E */	lha r3, 0x86e(r16)
/* 80515EF4  38 03 09 00 */	addi r0, r3, 0x900
/* 80515EF8  B0 10 08 6E */	sth r0, 0x86e(r16)
/* 80515EFC  A8 70 08 6C */	lha r3, 0x86c(r16)
/* 80515F00  38 03 0B 00 */	addi r0, r3, 0xb00
/* 80515F04  B0 10 08 6C */	sth r0, 0x86c(r16)
/* 80515F08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80515F0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80515F10  C0 36 07 1C */	lfs f1, 0x71c(r22)
/* 80515F14  C0 56 07 20 */	lfs f2, 0x720(r22)
/* 80515F18  C0 76 07 24 */	lfs f3, 0x724(r22)
/* 80515F1C  4B E3 09 CD */	bl PSMTXTrans
/* 80515F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80515F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80515F28  A8 90 08 6E */	lha r4, 0x86e(r16)
/* 80515F2C  4B AF 65 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80515F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80515F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80515F38  A8 90 08 6C */	lha r4, 0x86c(r16)
/* 80515F3C  4B AF 64 61 */	bl mDoMtx_XrotM__FPA4_fs
/* 80515F40  C0 58 00 0C */	lfs f2, 0xc(r24)
/* 80515F44  C0 38 00 08 */	lfs f1, 8(r24)
/* 80515F48  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80515F4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80515F50  EC 22 00 32 */	fmuls f1, f2, f0
/* 80515F54  FC 40 08 90 */	fmr f2, f1
/* 80515F58  FC 60 08 90 */	fmr f3, f1
/* 80515F5C  4B AF 6E DD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80515F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80515F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80515F68  7C 9F E8 2E */	lwzx r4, r31, r29
/* 80515F6C  38 84 00 24 */	addi r4, r4, 0x24
/* 80515F70  4B E3 05 41 */	bl PSMTXCopy
/* 80515F74  3A 80 00 00 */	li r20, 0
/* 80515F78  3A 60 00 00 */	li r19, 0
/* 80515F7C  3A 40 00 00 */	li r18, 0
/* 80515F80  3A 17 05 CC */	addi r16, r23, 0x5cc
lbl_80515F84:
/* 80515F84  80 6F 5D 3C */	lwz r3, 0x5d3c(r15)
/* 80515F88  38 00 00 FF */	li r0, 0xff
/* 80515F8C  90 01 00 08 */	stw r0, 8(r1)
/* 80515F90  38 80 00 00 */	li r4, 0
/* 80515F94  90 81 00 0C */	stw r4, 0xc(r1)
/* 80515F98  38 00 FF FF */	li r0, -1
/* 80515F9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80515FA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80515FA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80515FA8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80515FAC  3A 32 08 C0 */	addi r17, r18, 0x8c0
/* 80515FB0  7C 96 88 2E */	lwzx r4, r22, r17
/* 80515FB4  38 A0 00 00 */	li r5, 0
/* 80515FB8  7C D0 9A 2E */	lhzx r6, r16, r19
/* 80515FBC  7E A7 AB 78 */	mr r7, r21
/* 80515FC0  39 00 00 00 */	li r8, 0
/* 80515FC4  39 20 00 00 */	li r9, 0
/* 80515FC8  39 40 00 00 */	li r10, 0
/* 80515FCC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80515FD0  4B B3 74 FD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80515FD4  7C 76 89 2E */	stwx r3, r22, r17
/* 80515FD8  3A 94 00 01 */	addi r20, r20, 1
/* 80515FDC  2C 14 00 03 */	cmpwi r20, 3
/* 80515FE0  3A 73 00 02 */	addi r19, r19, 2
/* 80515FE4  3A 52 00 04 */	addi r18, r18, 4
/* 80515FE8  41 80 FF 9C */	blt lbl_80515F84
/* 80515FEC  C0 56 07 20 */	lfs f2, 0x720(r22)
/* 80515FF0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80515FF4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80515FF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80515FFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80516000  40 80 00 0C */	bge lbl_8051600C
/* 80516004  38 00 00 00 */	li r0, 0
/* 80516008  7C 1F E9 2E */	stwx r0, r31, r29
lbl_8051600C:
/* 8051600C  3B 9C 00 01 */	addi r28, r28, 1
/* 80516010  2C 1C 00 0E */	cmpwi r28, 0xe
/* 80516014  3B 7B 00 06 */	addi r27, r27, 6
/* 80516018  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8051601C  3B 39 00 04 */	addi r25, r25, 4
/* 80516020  41 80 FD D8 */	blt lbl_80515DF8
/* 80516024  88 7F 06 A0 */	lbz r3, 0x6a0(r31)
/* 80516028  7C 60 07 75 */	extsb. r0, r3
/* 8051602C  41 82 01 44 */	beq lbl_80516170
/* 80516030  7C 60 07 74 */	extsb r0, r3
/* 80516034  2C 00 00 01 */	cmpwi r0, 1
/* 80516038  40 82 00 48 */	bne lbl_80516080
/* 8051603C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80516040  80 63 00 04 */	lwz r3, 4(r3)
/* 80516044  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80516048  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8051604C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80516050  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80516054  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80516058  80 84 00 00 */	lwz r4, 0(r4)
/* 8051605C  4B E3 04 55 */	bl PSMTXCopy
/* 80516060  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80516064  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80516068  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8051606C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80516070  38 61 00 FC */	addi r3, r1, 0xfc
/* 80516074  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 80516078  4B D5 AE 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8051607C  48 00 00 D8 */	b lbl_80516154
lbl_80516080:
/* 80516080  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 80516084  38 9F 06 B0 */	addi r4, r31, 0x6b0
/* 80516088  7C 65 1B 78 */	mr r5, r3
/* 8051608C  4B E3 10 05 */	bl PSVECAdd
/* 80516090  C0 3F 06 B4 */	lfs f1, 0x6b4(r31)
/* 80516094  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80516098  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051609C  D0 1F 06 B4 */	stfs f0, 0x6b4(r31)
/* 805160A0  C0 3F 06 A4 */	lfs f1, 0x6a4(r31)
/* 805160A4  C0 5F 06 A8 */	lfs f2, 0x6a8(r31)
/* 805160A8  C0 7F 06 AC */	lfs f3, 0x6ac(r31)
/* 805160AC  38 60 00 00 */	li r3, 0
/* 805160B0  4B D5 AD AD */	bl MtxTrans__FfffUc
/* 805160B4  C0 58 00 0C */	lfs f2, 0xc(r24)
/* 805160B8  C0 38 00 08 */	lfs f1, 8(r24)
/* 805160BC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805160C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805160C4  EC 22 00 32 */	fmuls f1, f2, f0
/* 805160C8  FC 40 08 90 */	fmr f2, f1
/* 805160CC  FC 60 08 90 */	fmr f3, f1
/* 805160D0  38 60 00 01 */	li r3, 1
/* 805160D4  4B D5 AD D1 */	bl MtxScale__FfffUc
/* 805160D8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805160DC  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805160E0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 805160E4  38 60 00 01 */	li r3, 1
/* 805160E8  4B D5 AD 75 */	bl MtxTrans__FfffUc
/* 805160EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805160F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805160F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805160F8  A8 9F 06 BE */	lha r4, 0x6be(r31)
/* 805160FC  4B AF 63 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80516100  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80516104  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80516108  80 63 00 00 */	lwz r3, 0(r3)
/* 8051610C  38 80 7F FF */	li r4, 0x7fff
/* 80516110  4B AF 62 8D */	bl mDoMtx_XrotM__FPA4_fs
/* 80516114  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80516118  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8051611C  80 63 00 00 */	lwz r3, 0(r3)
/* 80516120  A8 9F 06 C0 */	lha r4, 0x6c0(r31)
/* 80516124  4B AF 63 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80516128  C0 3E 03 88 */	lfs f1, 0x388(r30)
/* 8051612C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80516130  C0 7E 03 8C */	lfs f3, 0x38c(r30)
/* 80516134  38 60 00 01 */	li r3, 1
/* 80516138  4B D5 AD 25 */	bl MtxTrans__FfffUc
/* 8051613C  A8 7F 06 BE */	lha r3, 0x6be(r31)
/* 80516140  38 03 02 00 */	addi r0, r3, 0x200
/* 80516144  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80516148  A8 7F 06 C0 */	lha r3, 0x6c0(r31)
/* 8051614C  38 03 0F 00 */	addi r0, r3, 0xf00
/* 80516150  B0 1F 06 C0 */	sth r0, 0x6c0(r31)
lbl_80516154:
/* 80516154  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 80516158  80 83 00 04 */	lwz r4, 4(r3)
/* 8051615C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80516160  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80516164  80 63 00 00 */	lwz r3, 0(r3)
/* 80516168  38 84 00 24 */	addi r4, r4, 0x24
/* 8051616C  4B E3 03 45 */	bl PSMTXCopy
lbl_80516170:
/* 80516170  88 1F 06 C2 */	lbz r0, 0x6c2(r31)
/* 80516174  7C 00 07 75 */	extsb. r0, r0
/* 80516178  41 82 00 BC */	beq lbl_80516234
/* 8051617C  38 00 00 00 */	li r0, 0
/* 80516180  98 1F 06 C2 */	stb r0, 0x6c2(r31)
/* 80516184  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 80516188  2C 00 00 00 */	cmpwi r0, 0
/* 8051618C  40 82 00 A8 */	bne lbl_80516234
/* 80516190  81 FF 06 7C */	lwz r15, 0x67c(r31)
/* 80516194  2C 0F 00 3B */	cmpwi r15, 0x3b
/* 80516198  40 82 00 68 */	bne lbl_80516200
/* 8051619C  A8 7F 09 7C */	lha r3, 0x97c(r31)
/* 805161A0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805161A4  7C 03 00 50 */	subf r0, r3, r0
/* 805161A8  7C 00 07 35 */	extsh. r0, r0
/* 805161AC  40 80 00 20 */	bge lbl_805161CC
/* 805161B0  7F E3 FB 78 */	mr r3, r31
/* 805161B4  38 80 00 38 */	li r4, 0x38
/* 805161B8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 805161BC  38 A0 00 00 */	li r5, 0
/* 805161C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805161C4  4B FE EA 11 */	bl anm_init__FP10e_rd_classifUcf
/* 805161C8  48 00 00 1C */	b lbl_805161E4
lbl_805161CC:
/* 805161CC  7F E3 FB 78 */	mr r3, r31
/* 805161D0  38 80 00 37 */	li r4, 0x37
/* 805161D4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 805161D8  38 A0 00 00 */	li r5, 0
/* 805161DC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805161E0  4B FE E9 F5 */	bl anm_init__FP10e_rd_classifUcf
lbl_805161E4:
/* 805161E4  7F E3 FB 78 */	mr r3, r31
/* 805161E8  38 80 00 04 */	li r4, 4
/* 805161EC  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 805161F0  38 A0 00 00 */	li r5, 0
/* 805161F4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805161F8  4B FE EB 31 */	bl horn_anm_init__FP10e_rd_classifUcf
/* 805161FC  48 00 00 34 */	b lbl_80516230
lbl_80516200:
/* 80516200  7F E3 FB 78 */	mr r3, r31
/* 80516204  38 80 00 39 */	li r4, 0x39
/* 80516208  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8051620C  38 A0 00 00 */	li r5, 0
/* 80516210  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80516214  4B FE E9 C1 */	bl anm_init__FP10e_rd_classifUcf
/* 80516218  7F E3 FB 78 */	mr r3, r31
/* 8051621C  38 80 00 05 */	li r4, 5
/* 80516220  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80516224  38 A0 00 00 */	li r5, 0
/* 80516228  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8051622C  4B FE EA FD */	bl horn_anm_init__FP10e_rd_classifUcf
lbl_80516230:
/* 80516230  91 FF 06 80 */	stw r15, 0x680(r31)
lbl_80516234:
/* 80516234  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80516238  7C 00 07 75 */	extsb. r0, r0
/* 8051623C  41 82 00 20 */	beq lbl_8051625C
/* 80516240  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 80516244  38 80 00 00 */	li r4, 0
/* 80516248  38 A0 00 00 */	li r5, 0
/* 8051624C  38 C0 00 00 */	li r6, 0
/* 80516250  4B AF A3 79 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 80516254  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 80516258  4B AF A4 55 */	bl modelCalc__14mDoExt_McaMorfFv
lbl_8051625C:
/* 8051625C  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80516260  7C 00 07 75 */	extsb. r0, r0
/* 80516264  40 82 00 E4 */	bne lbl_80516348
/* 80516268  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 8051626C  7C 00 07 75 */	extsb. r0, r0
/* 80516270  40 82 00 D8 */	bne lbl_80516348
/* 80516274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80516278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051627C  81 E3 5D AC */	lwz r15, 0x5dac(r3)
/* 80516280  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80516284  80 63 00 04 */	lwz r3, 4(r3)
/* 80516288  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8051628C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80516290  38 63 02 10 */	addi r3, r3, 0x210
/* 80516294  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80516298  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8051629C  4B E3 02 15 */	bl PSMTXCopy
/* 805162A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805162A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805162A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805162AC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805162B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805162B4  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805162B8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805162BC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805162C0  38 61 00 54 */	addi r3, r1, 0x54
/* 805162C4  38 8F 04 D0 */	addi r4, r15, 0x4d0
/* 805162C8  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 805162CC  4B D5 08 69 */	bl __mi__4cXyzCFRC3Vec
/* 805162D0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 805162D4  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 805162D8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805162DC  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805162E0  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 805162E4  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 805162E8  4B D5 13 8D */	bl cM_atan2s__Fff
/* 805162EC  7C 64 1B 78 */	mr r4, r3
/* 805162F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805162F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805162F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805162FC  4B AF 60 E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80516300  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80516304  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80516308  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8051630C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80516310  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80516314  38 61 00 FC */	addi r3, r1, 0xfc
/* 80516318  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8051631C  4B D5 AB D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80516320  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80516324  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80516328  7C 65 1B 78 */	mr r5, r3
/* 8051632C  4B E3 0D 65 */	bl PSVECAdd
/* 80516330  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80516334  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80516338  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8051633C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80516340  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80516344  D0 1F 05 70 */	stfs f0, 0x570(r31)
lbl_80516348:
/* 80516348  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 8051634C  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 80516350  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 80516354  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80516358  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 8051635C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80516360  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80516364  EC 02 00 2A */	fadds f0, f2, f0
/* 80516368  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8051636C  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 80516370  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80516374  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 80516378  7F E3 FB 78 */	mr r3, r31
/* 8051637C  4B FF CD 21 */	bl demo_camera__FP10e_rd_class
/* 80516380  38 00 00 01 */	li r0, 1
/* 80516384  98 1F 05 BB */	stb r0, 0x5bb(r31)
/* 80516388  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8051638C  64 00 00 20 */	oris r0, r0, 0x20
/* 80516390  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80516394  38 60 00 01 */	li r3, 1
lbl_80516398:
/* 80516398  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 8051639C  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 805163A0  E3 C1 01 68 */	psq_l f30, 360(r1), 0, 0 /* qr0 */
/* 805163A4  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 805163A8  39 61 01 60 */	addi r11, r1, 0x160
/* 805163AC  4B E4 BE 45 */	bl _restgpr_15
/* 805163B0  80 01 01 84 */	lwz r0, 0x184(r1)
/* 805163B4  7C 08 03 A6 */	mtlr r0
/* 805163B8  38 21 01 80 */	addi r1, r1, 0x180
/* 805163BC  4E 80 00 20 */	blr 
