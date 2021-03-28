lbl_800EB2BC:
/* 800EB2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EB2C0  7C 08 02 A6 */	mflr r0
/* 800EB2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EB2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800EB2CC  48 27 6F 11 */	bl _savegpr_29
/* 800EB2D0  7C 7F 1B 78 */	mr r31, r3
/* 800EB2D4  38 00 00 04 */	li r0, 4
/* 800EB2D8  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800EB2DC  4B FF F5 69 */	bl checkSumouVsActor__9daAlink_cFv
/* 800EB2E0  2C 03 00 00 */	cmpwi r3, 0
/* 800EB2E4  40 82 00 0C */	bne lbl_800EB2F0
/* 800EB2E8  38 60 00 01 */	li r3, 1
/* 800EB2EC  48 00 03 20 */	b lbl_800EB60C
lbl_800EB2F0:
/* 800EB2F0  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800EB2F4  2C 03 00 00 */	cmpwi r3, 0
/* 800EB2F8  41 82 00 0C */	beq lbl_800EB304
/* 800EB2FC  38 03 FF FF */	addi r0, r3, -1
/* 800EB300  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800EB304:
/* 800EB304  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800EB308  80 9F 28 58 */	lwz r4, 0x2858(r31)
/* 800EB30C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800EB310  48 18 58 F5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EB314  7C 64 1B 78 */	mr r4, r3
/* 800EB318  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800EB31C  38 A0 00 02 */	li r5, 2
/* 800EB320  38 C0 20 00 */	li r6, 0x2000
/* 800EB324  38 E0 08 00 */	li r7, 0x800
/* 800EB328  48 18 52 19 */	bl cLib_addCalcAngleS__FPsssss
/* 800EB32C  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EB330  28 00 00 03 */	cmplwi r0, 3
/* 800EB334  40 82 00 14 */	bne lbl_800EB348
/* 800EB338  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EB33C  38 03 C0 00 */	addi r0, r3, -16384
/* 800EB340  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EB344  48 00 00 10 */	b lbl_800EB354
lbl_800EB348:
/* 800EB348  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EB34C  38 03 40 00 */	addi r0, r3, 0x4000
/* 800EB350  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800EB354:
/* 800EB354  A8 7F 2F E2 */	lha r3, 0x2fe2(r31)
/* 800EB358  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800EB35C  48 18 5A C9 */	bl cLib_distanceAngleS__Fss
/* 800EB360  7C 7E 1B 78 */	mr r30, r3
/* 800EB364  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EB368  28 00 00 1C */	cmplwi r0, 0x1c
/* 800EB36C  41 82 00 48 */	beq lbl_800EB3B4
/* 800EB370  28 00 00 1B */	cmplwi r0, 0x1b
/* 800EB374  41 82 00 40 */	beq lbl_800EB3B4
/* 800EB378  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800EB37C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EB380  40 82 00 34 */	bne lbl_800EB3B4
/* 800EB384  7F E3 FB 78 */	mr r3, r31
/* 800EB388  4B FF F5 81 */	bl sumouPunchTrigger__9daAlink_cFv
/* 800EB38C  2C 03 00 00 */	cmpwi r3, 0
/* 800EB390  40 82 00 24 */	bne lbl_800EB3B4
/* 800EB394  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 800EB398  80 03 0E 74 */	lwz r0, 0xe74(r3)
/* 800EB39C  2C 00 00 03 */	cmpwi r0, 3
/* 800EB3A0  40 82 00 3C */	bne lbl_800EB3DC
/* 800EB3A4  7F E3 FB 78 */	mr r3, r31
/* 800EB3A8  4B FC 85 5D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB3AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB3B0  40 82 00 2C */	bne lbl_800EB3DC
lbl_800EB3B4:
/* 800EB3B4  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800EB3B8  54 1E 06 F6 */	rlwinm r30, r0, 0, 0x1b, 0x1b
/* 800EB3BC  7F E3 FB 78 */	mr r3, r31
/* 800EB3C0  4B FF F5 49 */	bl sumouPunchTrigger__9daAlink_cFv
/* 800EB3C4  7C 65 1B 78 */	mr r5, r3
/* 800EB3C8  7F E3 FB 78 */	mr r3, r31
/* 800EB3CC  7F C4 F3 78 */	mr r4, r30
/* 800EB3D0  A8 DF 30 08 */	lha r6, 0x3008(r31)
/* 800EB3D4  48 00 02 51 */	bl procSumouActionInit__9daAlink_cFiii
/* 800EB3D8  48 00 02 34 */	b lbl_800EB60C
lbl_800EB3DC:
/* 800EB3DC  7F E3 FB 78 */	mr r3, r31
/* 800EB3E0  4B FF F5 4D */	bl setSumouPunchStatus__9daAlink_cFv
/* 800EB3E4  7F E3 FB 78 */	mr r3, r31
/* 800EB3E8  38 80 00 15 */	li r4, 0x15
/* 800EB3EC  4B FC 7E 7D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EB3F0  38 00 00 05 */	li r0, 5
/* 800EB3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EB3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EB3FC  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EB400  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800EB404  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EB408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EB40C  40 81 00 BC */	ble lbl_800EB4C8
/* 800EB410  2C 1E 08 00 */	cmpwi r30, 0x800
/* 800EB414  40 81 00 B4 */	ble lbl_800EB4C8
/* 800EB418  2C 1E 78 00 */	cmpwi r30, 0x7800
/* 800EB41C  40 80 00 AC */	bge lbl_800EB4C8
/* 800EB420  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800EB424  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800EB428  7C 03 00 50 */	subf r0, r3, r0
/* 800EB42C  7C 03 07 34 */	extsh r3, r0
/* 800EB430  48 27 9C A1 */	bl abs
/* 800EB434  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800EB438  40 81 00 44 */	ble lbl_800EB47C
/* 800EB43C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800EB440  3C 63 00 01 */	addis r3, r3, 1
/* 800EB444  38 03 80 00 */	addi r0, r3, -32768
/* 800EB448  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EB44C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EB450  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800EB454  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EB458  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EB45C  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EB460  28 00 00 03 */	cmplwi r0, 3
/* 800EB464  40 82 00 10 */	bne lbl_800EB474
/* 800EB468  38 00 00 02 */	li r0, 2
/* 800EB46C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EB470  48 00 00 0C */	b lbl_800EB47C
lbl_800EB474:
/* 800EB474  38 00 00 03 */	li r0, 3
/* 800EB478  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_800EB47C:
/* 800EB47C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EB480  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800EB484  EC 01 00 24 */	fdivs f0, f1, f0
/* 800EB488  FC 00 02 10 */	fabs f0, f0
/* 800EB48C  FC 40 00 18 */	frsp f2, f0
/* 800EB490  C0 7F 33 AC */	lfs f3, 0x33ac(r31)
/* 800EB494  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 800EB498  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EB49C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800EB4A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EB4A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800EB4A8  40 81 00 18 */	ble lbl_800EB4C0
/* 800EB4AC  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800EB4B0  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800EB4B4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800EB4B8  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800EB4BC  48 00 00 10 */	b lbl_800EB4CC
lbl_800EB4C0:
/* 800EB4C0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EB4C4  48 00 00 08 */	b lbl_800EB4CC
lbl_800EB4C8:
/* 800EB4C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800EB4CC:
/* 800EB4CC  7F E3 FB 78 */	mr r3, r31
/* 800EB4D0  3C 80 80 39 */	lis r4, m__21daAlinkHIO_atnMove_c0@ha
/* 800EB4D4  38 84 D7 14 */	addi r4, r4, m__21daAlinkHIO_atnMove_c0@l
/* 800EB4D8  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 800EB4DC  4B FC 84 49 */	bl setNormalSpeedF__9daAlink_cFff
/* 800EB4E0  7F E3 FB 78 */	mr r3, r31
/* 800EB4E4  4B FC 84 21 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB4E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB4EC  41 82 00 70 */	beq lbl_800EB55C
/* 800EB4F0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800EB4F4  60 00 00 01 */	ori r0, r0, 1
/* 800EB4F8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800EB4FC  38 00 00 16 */	li r0, 0x16
/* 800EB500  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EB504  38 00 00 03 */	li r0, 3
/* 800EB508  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EB50C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EB510  38 03 C0 00 */	addi r0, r3, -16384
/* 800EB514  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EB518  A3 DF 1F 58 */	lhz r30, 0x1f58(r31)
/* 800EB51C  7F E3 FB 78 */	mr r3, r31
/* 800EB520  38 80 01 41 */	li r4, 0x141
/* 800EB524  4B FC 0F 2D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EB528  A0 03 00 00 */	lhz r0, 0(r3)
/* 800EB52C  54 03 05 3E */	clrlwi r3, r0, 0x14
/* 800EB530  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800EB534  7C 00 18 00 */	cmpw r0, r3
/* 800EB538  41 82 00 D0 */	beq lbl_800EB608
/* 800EB53C  7F E3 FB 78 */	mr r3, r31
/* 800EB540  38 80 01 41 */	li r4, 0x141
/* 800EB544  4B FC 1A 3D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EB548  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EB54C  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800EB550  38 00 01 41 */	li r0, 0x141
/* 800EB554  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800EB558  48 00 00 B0 */	b lbl_800EB608
lbl_800EB55C:
/* 800EB55C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800EB560  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800EB564  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800EB568  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EB56C  28 00 00 03 */	cmplwi r0, 3
/* 800EB570  3B C0 01 42 */	li r30, 0x142
/* 800EB574  40 82 00 08 */	bne lbl_800EB57C
/* 800EB578  3B C0 01 43 */	li r30, 0x143
lbl_800EB57C:
/* 800EB57C  A3 BF 1F 58 */	lhz r29, 0x1f58(r31)
/* 800EB580  7F E3 FB 78 */	mr r3, r31
/* 800EB584  7F C4 F3 78 */	mr r4, r30
/* 800EB588  4B FC 0E C9 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EB58C  A0 03 00 00 */	lhz r0, 0(r3)
/* 800EB590  54 03 05 3E */	clrlwi r3, r0, 0x14
/* 800EB594  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 800EB598  7C 00 18 00 */	cmpw r0, r3
/* 800EB59C  41 82 00 2C */	beq lbl_800EB5C8
/* 800EB5A0  7F E3 FB 78 */	mr r3, r31
/* 800EB5A4  7F C4 F3 78 */	mr r4, r30
/* 800EB5A8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EB5AC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800EB5B0  38 A0 00 18 */	li r5, 0x18
/* 800EB5B4  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800EB5B8  4B FC 1A 55 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800EB5BC  93 DF 31 98 */	stw r30, 0x3198(r31)
/* 800EB5C0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EB5C4  D0 1F 33 9C */	stfs f0, 0x339c(r31)
lbl_800EB5C8:
/* 800EB5C8  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EB5CC  28 00 00 03 */	cmplwi r0, 3
/* 800EB5D0  40 82 00 10 */	bne lbl_800EB5E0
/* 800EB5D4  38 00 00 18 */	li r0, 0x18
/* 800EB5D8  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EB5DC  48 00 00 0C */	b lbl_800EB5E8
lbl_800EB5E0:
/* 800EB5E0  38 00 00 17 */	li r0, 0x17
/* 800EB5E4  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_800EB5E8:
/* 800EB5E8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EB5EC  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800EB5F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 800EB5F4  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 800EB5F8  7F E3 FB 78 */	mr r3, r31
/* 800EB5FC  4B FD 3D 81 */	bl initBasAnime__9daAlink_cFv
/* 800EB600  38 00 00 60 */	li r0, 0x60
/* 800EB604  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800EB608:
/* 800EB608  38 60 00 01 */	li r3, 1
lbl_800EB60C:
/* 800EB60C  39 61 00 20 */	addi r11, r1, 0x20
/* 800EB610  48 27 6C 19 */	bl _restgpr_29
/* 800EB614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EB618  7C 08 03 A6 */	mtlr r0
/* 800EB61C  38 21 00 20 */	addi r1, r1, 0x20
/* 800EB620  4E 80 00 20 */	blr 
