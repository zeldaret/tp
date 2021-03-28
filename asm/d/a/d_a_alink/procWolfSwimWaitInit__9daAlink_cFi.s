lbl_8013852C:
/* 8013852C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138530  7C 08 02 A6 */	mflr r0
/* 80138534  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138538  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8013853C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80138540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138544  93 C1 00 08 */	stw r30, 8(r1)
/* 80138548  7C 7F 1B 78 */	mr r31, r3
/* 8013854C  7C 9E 23 78 */	mr r30, r4
/* 80138550  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80138554  28 00 01 27 */	cmplwi r0, 0x127
/* 80138558  40 82 00 0C */	bne lbl_80138564
/* 8013855C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 80138560  48 00 00 10 */	b lbl_80138570
lbl_80138564:
/* 80138564  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha
/* 80138568  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l
/* 8013856C  C3 E3 00 68 */	lfs f31, 0x68(r3)
lbl_80138570:
/* 80138570  7F E3 FB 78 */	mr r3, r31
/* 80138574  38 80 01 28 */	li r4, 0x128
/* 80138578  4B F8 99 F5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013857C  2C 1E 00 00 */	cmpwi r30, 0
/* 80138580  41 82 00 28 */	beq lbl_801385A8
/* 80138584  7F E3 FB 78 */	mr r3, r31
/* 80138588  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030022@ha */
/* 8013858C  38 84 00 22 */	addi r4, r4, 0x0022 /* 0x00030022@l */
/* 80138590  4B F8 6C 05 */	bl seStartMapInfo__9daAlink_cFUl
/* 80138594  38 00 00 00 */	li r0, 0
/* 80138598  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8013859C  38 00 00 01 */	li r0, 1
/* 801385A0  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 801385A4  48 00 00 0C */	b lbl_801385B0
lbl_801385A8:
/* 801385A8  38 00 00 00 */	li r0, 0
/* 801385AC  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_801385B0:
/* 801385B0  7F E3 FB 78 */	mr r3, r31
/* 801385B4  38 80 00 37 */	li r4, 0x37
/* 801385B8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801385BC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 801385C0  41 82 00 14 */	beq lbl_801385D4
/* 801385C4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 801385C8  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 801385CC  C0 25 00 64 */	lfs f1, 0x64(r5)
/* 801385D0  48 00 00 10 */	b lbl_801385E0
lbl_801385D4:
/* 801385D4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 801385D8  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 801385DC  C0 25 00 88 */	lfs f1, 0x88(r5)
lbl_801385E0:
/* 801385E0  FC 40 F8 90 */	fmr f2, f31
/* 801385E4  4B FF 10 F5 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 801385E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801385EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801385F0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 801385F4  64 00 00 10 */	oris r0, r0, 0x10
/* 801385F8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 801385FC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80138600  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80138604  41 82 00 14 */	beq lbl_80138618
/* 80138608  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 8013860C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80138610  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80138614  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80138618:
/* 80138618  38 00 00 00 */	li r0, 0
/* 8013861C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80138620  38 60 00 01 */	li r3, 1
/* 80138624  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80138628  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8013862C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138630  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80138638  7C 08 03 A6 */	mtlr r0
/* 8013863C  38 21 00 20 */	addi r1, r1, 0x20
/* 80138640  4E 80 00 20 */	blr 
